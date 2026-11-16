# Curator Due v0.1 (KS-D-50). Tells the Orchestrator if a Curator `maintenance` run is due.
# Due when 15 Change Orders were applied, or 15 days passed, since the last maintenance report, whichever comes first.
# Output ends with "DUE" or "not due". The script reads files only. It writes no file.
# Usage (from 20-29 Knowledge): & ".\20 Knowledge Backend\20.04 Knowledge Reference\Curator Due.ps1" [-Changes 15] [-Days 15]
param([int]$Changes = 15, [int]$Days = 15, [string]$Reports = '22 Workflow\22.26 Knowledge Health Reports', [string]$ChangeOrders = '22 Workflow\22.24 Change Orders')

function Get-Value([string[]]$lines, [string]$name) {
  foreach ($l in $lines) { if ($l -match "^$([regex]::Escape($name)):\s*(.*)$") { return $Matches[1].Trim('"', "'", ' ') } }
  return ''
}
function Get-Front([string]$path) {
  $l = Get-Content -Encoding UTF8 $path
  if ($l.Count -eq 0 -or $l[0] -ne '---') { return @() }
  $end = [Array]::IndexOf($l, '---', 1)
  if ($end -lt 1) { return @() }
  return $l[1..($end - 1)]
}

$last = $null
foreach ($f in Get-ChildItem -Path $Reports -Filter *.md -File) {
  $fm = Get-Front $f.FullName
  if ((Get-Value $fm 'mode') -eq 'maintenance' -and (Get-Value $fm 'status') -ne 'rejected') {
    $c = [datetime]::Parse((Get-Value $fm 'created'))
    if ($null -eq $last -or $c -gt $last) { $last = $c }
  }
}
if ($null -eq $last) { 'No maintenance report found. DUE'; exit 0 }

$applied = 0
foreach ($f in Get-ChildItem -Path $ChangeOrders -Filter *.md -File) {
  $fm = Get-Front $f.FullName
  if ((Get-Value $fm 'status') -eq 'applied') {
    $a = Get-Value $fm 'applied'
    if ($a -and [datetime]::Parse($a) -gt $last) { $applied++ }
  }
}
$sinceDays = [math]::Floor(((Get-Date) - $last).TotalDays)
"Last maintenance report: $($last.ToString('yyyy-MM-dd HH:mm')). Change Orders applied since: $applied (limit $Changes). Days since: $sinceDays (limit $Days)."
if ($applied -ge $Changes -or $sinceDays -ge $Days) { 'DUE' } else { 'not due' }
