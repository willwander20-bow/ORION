# Merge Draft v0.1 (KS-D-51). Orchestrator Rulebook section 4.5.
# Merges an agent draft from .staging into the note that keeps it, so the Orchestrator does not re-type it.
#   -Mode Brief       a Reference Brief draft goes into a Source note. It copies source-quality, extraction-completeness,
#                     extraction-confidence, and claim-count to the Source frontmatter, and adds the Brief sections under "# Reference Brief".
#   -Mode Assessment  a Knowledge Assessment draft goes into a Change Order as "## 1b. Editor second look"
#                     (the findings table, the recommended action, and the relevance values). Used at the threshold.
# The script sets "updated" from the system clock. It does not set status, ID, or file name. It stops if the section already exists.
# Usage (from 20-29 Knowledge): & ".\20 Knowledge Backend\20.04 Knowledge Reference\Merge Draft.ps1" -Mode Brief -Draft "<draft>" -Target "<Source note>"
param(
  [Parameter(Mandatory = $true)][ValidateSet('Brief', 'Assessment')][string]$Mode,
  [Parameter(Mandatory = $true)][string]$Draft,
  [Parameter(Mandatory = $true)][string]$Target
)
$enc = New-Object System.Text.UTF8Encoding $false
function Read-Note([string]$p) { return ([IO.File]::ReadAllText((Resolve-Path -LiteralPath $p).Path, $enc) -replace "`r`n", "`n") }
function Split-Note([string]$t) {
  if ($t -notmatch '(?s)^---\n(.*?)\n---\n?(.*)$') { throw 'The note has no frontmatter.' }
  return @{ Front = $Matches[1]; Body = $Matches[2] }
}
function Get-Field([string]$front, [string]$name) {
  if ($front -match "(?m)^$([regex]::Escape($name)):[ \t]*(.*)$") { return $Matches[1].Trim() } else { return '' }
}
function Set-Field([string]$front, [string]$name, [string]$value) {
  $line = if ($value -eq '') { "${name}:" } else { "${name}: $value" }
  $re = "(?m)^$([regex]::Escape($name)):.*$"
  if ($front -match $re) { return [regex]::Replace($front, $re, { param($m) $line }) }
  return $front + "`n" + $line
}
$now = (Get-Date).ToString('yyyy-MM-ddTHH:mm')
$d = Split-Note (Read-Note $Draft)
$t = Split-Note (Read-Note $Target)

if ($Mode -eq 'Brief') {
  if ((Get-Field $d.Front 'type') -ne 'reference-brief') { throw 'The draft is not a reference-brief.' }
  if ((Get-Field $t.Front 'type') -ne 'source') { throw 'The target is not a source.' }
  if ($t.Body -match '(?m)^# Reference Brief') { throw 'The Source note already has a Reference Brief.' }
  foreach ($n in 'source-quality', 'extraction-completeness', 'extraction-confidence', 'claim-count') {
    $t.Front = Set-Field $t.Front $n (Get-Field $d.Front $n)
  }
  $t.Front = Set-Field $t.Front 'updated' $now
  $body = $t.Body.TrimEnd() + "`n`n# Reference Brief`n`n" + $d.Body.Trim() + "`n"
  $out = "---`n" + $t.Front + "`n---`n" + $body
  [IO.File]::WriteAllText((Resolve-Path -LiteralPath $Target).Path, $out, $enc)
  "Merged the Brief into the Source note. claim-count: $(Get-Field $d.Front 'claim-count'). Now run Frontmatter Check and Quote Check on the Source note."
}
else {
  if ((Get-Field $d.Front 'type') -ne 'knowledge-assessment') { throw 'The draft is not a knowledge-assessment.' }
  if ((Get-Field $t.Front 'type') -ne 'change-order') { throw 'The target is not a change-order.' }
  if ($t.Body -match '(?m)^## 1b\. Editor second look') { throw 'The Change Order already has an Editor second look.' }
  if ($d.Body -notmatch '(?s)(## 3\. Findings.*?)(?=\n## 4\.)') { throw 'No section 3 in the draft.' }
  $find = $Matches[1].Trim() -replace '^## 3\. Findings', '### Findings'
  if ($d.Body -notmatch '(?s)(## 5\. Recommended action.*?)(?=\n## 6\.)') { throw 'No section 5 in the draft.' }
  $act = $Matches[1].Trim() -replace '^## 5\. Recommended action', '### Recommended action'
  $rel = Get-Field $d.Front 'relevance'; $ra = Get-Field $d.Front 'recommended-action'
  $block = "## 1b. Editor second look`n`n" +
    "The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: $rel. Recommended action: $ra. Brain version: $(Get-Field $d.Front 'brain-version').`n`n" +
    $find + "`n`n" + $act + "`n`n"
  if ($t.Body -notmatch '(?m)^## 2\. Proposed changes') { throw 'The Change Order has no section 2.' }
  $t.Body = [regex]::Replace($t.Body, '(?m)^## 2\. Proposed changes', { param($m) $block + '## 2. Proposed changes' }, 1)
  $t.Front = Set-Field $t.Front 'updated' $now
  $out = "---`n" + $t.Front + "`n---`n" + $t.Body
  [IO.File]::WriteAllText((Resolve-Path -LiteralPath $Target).Path, $out, $enc)
  "Merged the Assessment into the Change Order as 1b. Relevance: $rel. Recommended action: $ra. Now compare it with section 1a."
}
