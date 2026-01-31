param(
  [string]$SkillPath = "SKILL.md"
)

$skill = Get-Content -Path $SkillPath -Raw
$nameMatch = [regex]::Match($skill, '(?m)^name:\s*([\w.-]+)\s*$')
$versionMatch = [regex]::Match($skill, '(?m)^version:\s*([\w.-]+)\s*$')
if (-not $nameMatch.Success -or -not $versionMatch.Success) {
  Write-Error "Failed to read name/version from $SkillPath"
  exit 1
}
$skillName = $nameMatch.Groups[1].Value
$skillVersion = $versionMatch.Groups[1].Value

$adapters = @(
  'AGENTS.md',
  'adapters/gemini-extension/GEMINI.md',
  'adapters/vscode/HUMANIZER.md',
  'adapters/antigravity-skill/SKILL.md'
)

$errors = @()
foreach ($file in $adapters) {
  if (-not (Test-Path $file)) {
    $errors += "Missing adapter file: $file"
    continue
  }
  $content = Get-Content -Path $file -Raw
  if ($content -notmatch "skill_name:\s*${skillName}") {
    $errors += "${file}: skill_name mismatch (expected ${skillName})"
  }
  if ($content -notmatch "skill_version:\s*${skillVersion}") {
    $errors += "${file}: skill_version mismatch (expected ${skillVersion})"
  }
  if ($content -notmatch "last_synced:") {
    $errors += "${file}: missing last_synced"
  }
  if ($content -notmatch "source_path:\s*${SkillPath}") {
    $errors += "${file}: source_path mismatch (expected ${SkillPath})"
  }
}

if ($errors.Count -gt 0) {
  $errors | ForEach-Object { Write-Error $_ }
  exit 1
}

Write-Output "Adapter metadata validated against ${SkillPath} (${skillName} ${skillVersion})."
