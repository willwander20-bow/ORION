# Repoint Citations v0.1 (KS-D-52). Migration of legacy Briefs and Assessments into Source notes.
# Changes citations in a folder from an archived BRF or KAS note to the Source note that now holds it:
#   [[BRF-... Title|alias]]  ->  [[SRC-... Title|alias]]        (the E labels are the same)
#   BRF-... in plain text    ->  SRC-...
#   [[KAS-... Title|alias]]  ->  [[SRC-... Title#Assessment (migrated)|alias]]
#   KAS-... in plain text    ->  SRC-... (assessment section)
# Default is a dry run: it reports and writes nothing. Add -Apply to write. Output ends with "Replacements: N".
# Usage (from 20-29 Knowledge): & ".\20 Knowledge Backend\20.04 Knowledge Reference\Repoint Citations.ps1" -Path "21 Brain" [-Apply]
param([Parameter(Mandatory = $true)][string]$Path, [switch]$Apply,
      [string]$Sources = '22 Workflow\22.21 Sources', [string]$Archive = '20 Knowledge Backend\20.09 Knowledge Archive')
$enc = New-Object System.Text.UTF8Encoding $false
function Get-Field([string[]]$l, [string]$n) { foreach ($x in $l) { if ($x -match "^$([regex]::Escape($n)):\s*(.*)$") { return $Matches[1] } }; return '' }
# Build the maps from the archived notes. A Brief maps to its Source through "source"; an Assessment the same.
$linkMap = @{}; $idMap = @{}; $kasLink = @{}; $kasId = @{}
foreach ($f in Get-ChildItem -Path $Archive -Filter *.md -File) {
  if ($f.Name -notmatch '^(BRF|KAS)-\d{8}-\d{3} ') { continue }
  $lines = Get-Content -Encoding UTF8 $f.FullName
  $src = Get-Field $lines 'source'
  if ($src -notmatch 'SRC-\d{8}-\d{3}[^\]|]*') { continue }
  $srcName = $Matches[0].Trim()
  $oldName = [IO.Path]::GetFileNameWithoutExtension($f.Name); $oldId = $oldName.Substring(0, 16)
  if (-not (Get-ChildItem -Path $Sources -Filter "$srcName.md" -File)) { continue }
  if ($f.Name -like 'BRF-*') { $linkMap[$oldName] = $srcName; $idMap[$oldId] = $srcName.Substring(0, 16) }
  else { $kasLink[$oldName] = $srcName; $kasId[$oldId] = $srcName.Substring(0, 16) }
}
$total = 0
foreach ($f in Get-ChildItem -Path $Path -Filter *.md -File) {
  $t = [IO.File]::ReadAllText($f.FullName, $enc); $orig = $t; $n = 0
  foreach ($k in ($linkMap.Keys | Sort-Object { $_.Length } -Descending)) {
    $pat = '\[\[' + [regex]::Escape($k) + '(\|[^\]]*)?\]\]'
    $c = [regex]::Matches($t, $pat).Count
    if ($c) { $t = [regex]::Replace($t, $pat, { param($m) '[[' + $linkMap[$k] + $m.Groups[1].Value + ']]' }); $n += $c }
  }
  foreach ($k in ($kasLink.Keys | Sort-Object { $_.Length } -Descending)) {
    $pat = '\[\[' + [regex]::Escape($k) + '(\|[^\]]*)?\]\]'
    $c = [regex]::Matches($t, $pat).Count
    if ($c) { $t = [regex]::Replace($t, $pat, { param($m) '[[' + $kasLink[$k] + '#Assessment (migrated)' + $m.Groups[1].Value + ']]' }); $n += $c }
  }
  foreach ($k in $idMap.Keys) { $c = [regex]::Matches($t, [regex]::Escape($k)).Count; if ($c) { $t = $t.Replace($k, $idMap[$k]); $n += $c } }
  foreach ($k in $kasId.Keys) { $c = [regex]::Matches($t, [regex]::Escape($k)).Count; if ($c) { $t = $t.Replace($k, $kasId[$k]); $n += $c } }
  if ($n) {
    '{0,3} replacements  {1}' -f $n, $f.Name
    $total += $n
    if ($Apply) { [IO.File]::WriteAllText($f.FullName, $t, $enc) }
  }
}
$left = @(Get-ChildItem -Path $Path -Filter *.md -File | Select-String -Pattern '(BRF|KAS)-\d{8}-\d{3}' | ForEach-Object { $_.Matches.Value } | Sort-Object -Unique)
if ($Apply) { "Left after the change: " + ($(if ($left) { $left -join ', ' } else { 'none' })) } else { "Would leave (not mapped): " + ($(if ($left) { ($left | Where-Object { -not $idMap.ContainsKey($_) -and -not $kasId.ContainsKey($_) }) -join ', ' } else { 'none' })) }
"Replacements: $total" + $(if ($Apply) { ' (written)' } else { ' (dry run, nothing written)' })
