# Quote Check v0.4 (KS-D-40, KS-D-42). v0.4 reads the page as UTF-8 (v0.3 garbled a curly apostrophe). Orchestrator Rulebook section 4.1.
# Checks each Quote: "..." in a Reference Brief against the raw web page (area CLAUDE.md rule 9a),
# or against a companion text file (Schema 5.2) when -File is given.
# Pass: each quote is in the page text and has 15 words or fewer. Output ends with "Failed: N".
# Limits: web pages and companion text files (not PDFs). A quote that contains a " character is not read.
# Usage: & ".\Quote Check.ps1" -Brief "<Brief path>" (-Url "<url>" | -File "<companion file path>")
# The script reads files and the page only. It writes no file.
param(
  [Parameter(Mandatory = $true)][string]$Brief,
  [string]$Url,
  [string]$File
)
if ((-not $Url -and -not $File) -or ($Url -and $File)) { 'ERROR: give -Url or -File, not both and not neither.'; exit 1 }

function Norm([string]$s) {
  $s = $s -replace '[‘’]', "'" -replace '[“”]', '"' -replace ' ', ' '
  return ($s -replace '\s+', ' ').Trim()
}

if ($File) {
  if (-not (Test-Path -LiteralPath $File)) { "ERROR: file not found: $File"; exit 1 }
  $raw = (Get-Content -Encoding UTF8 -LiteralPath $File) -join "`n"
} else {
  $tmp = [IO.Path]::GetTempFileName()
  curl.exe -s -L --max-time 30 -A "Mozilla/5.0" -o $tmp $Url
  $raw = [IO.File]::ReadAllText($tmp, (New-Object System.Text.UTF8Encoding $false))
  Remove-Item $tmp -ErrorAction SilentlyContinue
}
if (-not $raw) { "ERROR: no text from $Url$File"; exit 1 }
$raw = [regex]::Replace($raw, '(?is)<(script|style)[^>]*>.*?</\1>', ' ')
# Inline tags: remove with no space, so "EPUB3</a>-compliant" reads "EPUB3-compliant" (F3, KS-D-42).
$raw = [regex]::Replace($raw, '(?i)</?(a|span|em|strong|b|i|abbr|code|sup|sub)(\s[^>]*)?>', '')
# Other tags: replace with a space.
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
