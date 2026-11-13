# Link Check v0.1 (KS-D-43). Phase 6, Knowledge Curator input.
# Checks the links of Brain records. Output ends with "Problems: N".
#   1. Broken link: a wikilink whose target file is not found under -Root.
#   2. Orphan: a Brain Claim or Concept that no other Brain record links to. A MOC is an entry point, so it is not checked.
#   3. Back-link: an applied Change Order lists a record in "affected", but the record's
#      "change-orders" does not list that Change Order (KS-D-03).
#   4. Change Order state: a record's "change-orders" lists a Change Order that is not "applied".
# Usage (from 20-29 Knowledge): & ".\20 Knowledge Backend\20.04 Knowledge Reference\Link Check.ps1" [-Brain "<folder>"] [-Root "<folder>", ...] [-ChangeOrders "<folder>"]
# Defaults: -Brain "21 Brain", -Root "." (the area), -ChangeOrders "22 Workflow\22.24 Change Orders".
# The script reads files only. It writes no file.
param(
  [string]$Brain = '21 Brain',
  [string[]]$Root = @('.'),
  [string]$ChangeOrders = '22 Workflow\22.24 Change Orders'
)

function Get-Links([string]$text) {
  foreach ($m in [regex]::Matches($text, '\[\[([^\]\|#]+)(#[^\]\|]*)?(\|[^\]]*)?\]\]')) { $m.Groups[1].Value.Trim() }
}
function Get-Front([string[]]$lines) {
  if ($lines.Count -eq 0 -or $lines[0] -ne '---') { return @() }
  $end = [Array]::IndexOf($lines, '---', 1)
  if ($end -lt 1) { return @() }
  return $lines[1..($end - 1)]
}
function Get-ListField([string[]]$front, [string]$name) {
  $out = @(); $on = $false
  foreach ($x in $front) {
    if ($x -match "^$([regex]::Escape($name)):\s*(.*)$") {
      $on = $true
      $v = $Matches[1]
      if ($v -match '^\[(.*)\]$') { $out += Get-Links $Matches[1]; $on = $false }
      elseif ($v -ne '') { $out += Get-Links $v; $on = $false }
      continue
    }
    if ($on) {
      if ($x -match '^\s+-\s+(.*)$') { $out += Get-Links $Matches[1] } else { $on = $false }
    }
  }
  return $out
}
function Get-Field([string[]]$front, [string]$name) {
  foreach ($x in $front) { if ($x -match "^$([regex]::Escape($name)):\s*(.*)$") { return $Matches[1].Trim('"', "'", ' ') } }
  return ''
}

# Names of all files that a link can point to (Obsidian resolves by file name).
$known = @{}
foreach ($r in $Root) {
  foreach ($f in Get-ChildItem -Path $r -Recurse -File) {
    $known[$f.BaseName.ToLower()] = $true
    $known[$f.Name.ToLower()] = $true
  }
}

$records = Get-ChildItem -Path $Brain -Filter *.md -File | Where-Object { $_.Name -match '^(CLM|CON|MOC)-\d{8}-\d{3} ' }
$all = Get-ChildItem -Path $Brain -Filter *.md -File
$bad = 0
$inbound = @{}
foreach ($r in $records) { if ($r.Name -notmatch '^MOC-') { $inbound[$r.BaseName] = 0 } }   # a MOC is an entry point

# 1. Broken links, and count inbound links between Brain records.
foreach ($f in $all) {
  $text = Get-Content -Encoding UTF8 -Raw $f.FullName
  $targets = @(Get-Links $text)
  foreach ($t in $targets) {
    $leaf = Split-Path $t -Leaf
    if (-not $known.ContainsKey($leaf.ToLower())) { $bad++; "BROKEN    $($f.Name): [[${t}]]" }
  }
  foreach ($t in ($targets | ForEach-Object { Split-Path $_ -Leaf } | Sort-Object -Unique)) {
    if ($inbound.ContainsKey($t) -and $t -ne $f.BaseName) { $inbound[$t]++ }
  }
}

# 2. Orphans.
foreach ($k in $inbound.Keys | Sort-Object) {
  if ($inbound[$k] -eq 0) { $bad++; "ORPHAN    ${k}.md: no link from another Brain record" }
}

# 3 and 4. Change Order back-links and state.
$coState = @{}
$coAffected = @{}
if (Test-Path $ChangeOrders) {
  foreach ($c in Get-ChildItem -Path $ChangeOrders -Filter *.md -File) {
    $front = Get-Front (Get-Content -Encoding UTF8 $c.FullName)
    $coState[$c.BaseName] = Get-Field $front 'status'
    $coAffected[$c.BaseName] = @(Get-ListField $front 'affected' | ForEach-Object { Split-Path $_ -Leaf })
  }
}
$recCOs = @{}
foreach ($r in $records) {
  $front = Get-Front (Get-Content -Encoding UTF8 $r.FullName)
  $recCOs[$r.BaseName] = @(Get-ListField $front 'change-orders' | ForEach-Object { Split-Path $_ -Leaf })
  foreach ($co in $recCOs[$r.BaseName]) {
    if ($coState.ContainsKey($co) -and $coState[$co] -ne 'applied') {
      $bad++; "CO-STATE  $($r.Name): lists [[${co}]], status '$($coState[$co])', not 'applied'"
    }
  }
}
foreach ($co in $coAffected.Keys | Sort-Object) {
  if ($coState[$co] -ne 'applied') { continue }
  foreach ($a in $coAffected[$co]) {
    if ($recCOs.ContainsKey($a) -and ($recCOs[$a] -notcontains $co)) {
      $bad++; "BACKLINK  ${a}.md: [[${co}]] is applied and lists this record in 'affected', but 'change-orders' does not list it"
    }
  }
}

"Records checked: $(@($records).Count). Files checked: $(@($all).Count). Problems: $bad."
