# Quote Check v0.1 (KS-D-40). Orchestrator Rulebook section 4.1.
# Checks each Quote: "..." in a Reference Brief against the raw web page (area CLAUDE.md rule 9a).
# Pass: each quote is in the page text and has 15 words or fewer. Output ends with "Failed: N".
# Limits: web pages only (not companion files or PDFs). A quote that contains a " character is not read.
# Usage: & ".\Quote Check.ps1" -Brief "<Brief path>" -Url "<url>"
# The script reads files and the page only. It writes no file.
param(
  [Parameter(Mandatory = $true)][string]$Brief,
  [Parameter(Mandatory = $true)][string]$Url
)

function Norm([string]$s) {
  $s = $s -replace '[‘’]', "'" -replace '[“”]', '"' -replace ' ', ' '
  return ($s -replace '\s+', ' ').Trim()
}

$raw = (curl.exe -s -L --max-time 30 -A "Mozilla/5.0" $Url) -join "`n"
if (-not $raw) { "ERROR: no page text from $Url"; exit 1 }
$raw = [regex]::Replace($raw, '(?is)<(script|style)[^>]*>.*?</\1>', ' ')
$text = [regex]::Replace($raw, '<[^>]+>', ' ')
Add-Type -AssemblyName System.Web
$text = Norm ([System.Web.HttpUtility]::HtmlDecode($text))

$n = 0; $fail = 0
foreach ($l in (Get-Content -Encoding UTF8 $Brief)) {
  foreach ($m in [regex]::Matches($l, 'Quote:\s*"([^"]+)"')) {
    $n++
    $q = Norm $m.Groups[1].Value
    $words = ($q -split ' ').Count
    $ok = $text.Contains($q)
    if (-not $ok -or $words -gt 15) { $fail++; "FAIL ($words words, found=$ok): $q" }
  }
}
"Quotes checked: $n. Failed: $fail."
