# Frontmatter Check v0.1 (KS-D-42). Orchestrator Rulebook section 4.0.
# Checks the YAML frontmatter of Knowledge System records for errors that stop Obsidian from reading it.
# It is a rule check, not a full YAML parser. Output ends with "Problems: N".
# Usage (from 20-29 Knowledge): & ".\20 Knowledge Backend\20.04 Knowledge Reference\Frontmatter Check.ps1" [-Path "<file or folder>"]
# With no -Path, it checks 21 Brain and 22.21 to 22.24. The script reads files only. It writes no file.
param([string[]]$Path)

if (-not $Path) {
  $Path = @('21 Brain', '22 Workflow\22.21 Sources', '22 Workflow\22.22 Reference Briefs',
            '22 Workflow\22.23 Knowledge Assessments', '22 Workflow\22.24 Change Orders')
}
$files = foreach ($p in $Path) { Get-ChildItem -Path $p -Filter *.md -File }
$files = $files | Where-Object { $_.Name -notmatch '\(text\)\.md$' }   # companion files have no frontmatter

$bad = 0
foreach ($f in $files) {
  $l = Get-Content -Encoding UTF8 $f.FullName
  if ($l.Count -eq 0 -or $l[0] -ne '---') { $bad++; "$($f.Name): no frontmatter start '---'"; continue }
  $end = [Array]::IndexOf($l, '---', 1)
  if ($end -lt 1) { $bad++; "$($f.Name): no frontmatter end '---'"; continue }
  for ($i = 1; $i -lt $end; $i++) {
    $x = $l[$i]
    if ($x -match '^\s*$') { continue }
    if ($x -match '^\s+-\s+(.*)$') { $v = $Matches[1] }                       # list item
    elseif ($x -match '^[a-z0-9-]+:\s*$') { continue }                        # empty value or list start
    elseif ($x -match '^[a-z0-9-]+:\s+(.*)$') { $v = $Matches[1] }            # key: value
    else { $bad++; "$($f.Name) line $($i+1): not 'key: value' or a list item: $x"; continue }
    if ($v -match '^"') {
      if ($v -notmatch '^"([^"\\]|\\.)*"$') { $bad++; "$($f.Name) line $($i+1): double quotes not closed: $x" }
    } elseif ($v -match "^'") {
      if ($v -notmatch "^'([^']|'')*'$") { $bad++; "$($f.Name) line $($i+1): single quotes not closed: $x" }
    } elseif ($v -match '^\[.*\]$' -or $v -match '^\{.*\}$') {
      # flow list or map, for example []
    } elseif ($v -match ': ' -or $v -match ' #' -or $v -match '^[@`&*!|>%{\[#,?-]') {
      $bad++; "$($f.Name) line $($i+1): put the value in quotes: $x"
    }
  }
}
"Files checked: $(@($files).Count). Problems: $bad."
