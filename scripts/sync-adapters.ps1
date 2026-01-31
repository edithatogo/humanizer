param(
  [string]$SourcePath = "SKILL.md"
)

$ErrorActionPreference = "Stop"

# 1. Read Source Truth
Write-Host "Reading source truth from $SourcePath..."
if (-not (Test-Path $SourcePath)) {
    Write-Error "Source file $SourcePath not found!"
}

$sourceContent = Get-Content -Path $SourcePath -Raw
$versionMatch = [regex]::Match($sourceContent, '(?m)^version:\s*([\w.-]+)\s*$')
if (-not $versionMatch.Success) {
    Write-Error "Could not parse version from $SourcePath"
}
$version = $versionMatch.Groups[1].Value
$today = Get-Date -Format "yyyy-MM-dd"

Write-Host "Detected Version: $version"
Write-Host "Sync Date: $today"

# 2. Sync Antigravity Skill (Full Content Copy + Metadata Injection)
$antigravitySkillPath = "adapters/antigravity-skill/SKILL.md"
Write-Host "Syncing Antigravity Skill to $antigravitySkillPath..."

# Create the adapter frontmatter
$antigravityFrontmatter = @"
---
adapter_metadata:
  skill_name: humanizer
  skill_version: $version
  last_synced: $today
  source_path: $SourcePath
  adapter_id: antigravity-skill
  adapter_format: Antigravity skill
---

"@

# Combine frontmatter with source content (stripping source frontmatter if needed, 
# but usually Antigravity is okay with double frontmatter or we can strip the first one.
# For simplicity and correctness, let's keep the source as is, just prepending our metadata 
# block as a comment or separate block if supported. 
# However, standard markdown parsers might get confused by two YAML blocks.
# Let's check if the source has a YAML block.
if ($sourceContent.StartsWith("---")) {
    # Remove the first line "---" so we can merge or just append.
    # Actually, let's just prepend our block. Double frontmatter is rare but let's try to be clean.
    # We will just write our metadata block, then the source content.
    # If the source content has frontmatter, it will appear as a second block.
    # Ideally, we might want to merge them, but for now prepending is safest for "carrying over" without logic errors.
    $newContent = $antigravityFrontmatter + "`n" + $sourceContent
} else {
    $newContent = $antigravityFrontmatter + "`n" + $sourceContent
}

Set-Content -Path $antigravitySkillPath -Value $newContent -NoNewline
Write-Host "Updated $antigravitySkillPath"


# 3. Sync Gemini Extension Metadata (Update Version/Date only)
$geminiPath = "adapters/gemini-extension/GEMINI.md"
Write-Host "Updating metadata in $geminiPath..."
if (Test-Path $geminiPath) {
    $geminiContent = Get-Content -Path $geminiPath -Raw
    $geminiContent = $geminiContent -replace 'skill_version:.*', "skill_version: $version"
    $geminiContent = $geminiContent -replace 'last_synced:.*', "last_synced: $today"
    Set-Content -Path $geminiPath -Value $geminiContent -NoNewline
    Write-Host "Updated $geminiPath"
} else {
    Write-Warning "$geminiPath not found."
}

# 4. Sync Antigravity Rules Metadata
$rulesPath = "adapters/antigravity-rules-workflows/README.md"
Write-Host "Updating metadata in $rulesPath..."
if (Test-Path $rulesPath) {
    $rulesContent = Get-Content -Path $rulesPath -Raw
    $rulesContent = $rulesContent -replace 'skill_version:.*', "skill_version: $version"
    $rulesContent = $rulesContent -replace 'last_synced:.*', "last_synced: $today"
    Set-Content -Path $rulesPath -Value $rulesContent -NoNewline
    Write-Host "Updated $rulesPath"
} else {
    Write-Warning "$rulesPath not found."
}

# 5. Sync Qwen CLI Metadata
$qwenPath = "adapters/qwen-cli/QWEN.md"
Write-Host "Updating metadata in $qwenPath..."
if (Test-Path $qwenPath) {
    $qwenContent = Get-Content -Path $qwenPath -Raw
    $qwenContent = $qwenContent -replace 'skill_version:.*', "skill_version: $version"
    $qwenContent = $qwenContent -replace 'last_synced:.*', "last_synced: $today"
    Set-Content -Path $qwenPath -Value $qwenContent -NoNewline
    Write-Host "Updated $qwenPath"
} else {
    Write-Warning "$qwenPath not found."
}

# 6. Sync Copilot Metadata
$copilotPath = "adapters/copilot/COPILOT.md"
Write-Host "Updating metadata in $copilotPath..."
if (Test-Path $copilotPath) {
    $copilotContent = Get-Content -Path $copilotPath -Raw
    $copilotContent = $copilotContent -replace 'skill_version:.*', "skill_version: $version"
    $copilotContent = $copilotContent -replace 'last_synced:.*', "last_synced: $today"
    Set-Content -Path $copilotPath -Value $copilotContent -NoNewline
    Write-Host "Updated $copilotPath"
} else {
    Write-Warning "$copilotPath not found."
}

Write-Host "Sync Complete."
