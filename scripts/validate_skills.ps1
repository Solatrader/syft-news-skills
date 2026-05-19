param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
)

$ErrorActionPreference = "Stop"

$skillNames = @(
    "syft-news-pipeline",
    "syft-profile-summary",
    "syft-daily-briefing",
    "syft-storyline-tree",
    "syft-storyline-backfill",
    "syft-guidance-rulebook"
)

$roots = @(
    (Join-Path $RepoRoot "source-skills"),
    (Join-Path $RepoRoot ".github\skills"),
    (Join-Path $RepoRoot "codex-skills")
)

function Test-SkillFile {
    param(
        [string]$SkillDir
    )

    $skillFile = Join-Path $SkillDir "SKILL.md"
    if (-not (Test-Path $skillFile)) {
        throw "Missing SKILL.md: $skillFile"
    }

    $content = Get-Content -Raw -Encoding UTF8 $skillFile
    if ($content -notmatch '(?s)^---\r?\n(.*?)\r?\n---\r?\n') {
        throw "Missing YAML frontmatter: $skillFile"
    }

    $frontmatter = $Matches[1]
    if ($frontmatter -notmatch '(?m)^name:\s*.+$') {
        throw "Missing name field: $skillFile"
    }
    if ($frontmatter -notmatch '(?m)^description:\s*.+$') {
        throw "Missing description field: $skillFile"
    }
}

foreach ($root in $roots) {
    if (-not (Test-Path $root)) {
        throw "Missing skill root: $root"
    }

    foreach ($skillName in $skillNames) {
        $skillDir = Join-Path $root $skillName
        if (-not (Test-Path $skillDir)) {
            throw "Missing skill directory: $skillDir"
        }

        Test-SkillFile -SkillDir $skillDir
    }
}

Write-Host "Validated $($skillNames.Count) skills across $($roots.Count) roots."
