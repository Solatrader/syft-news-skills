param(
    [string]$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path,
    [string]$Version = "dev"
)

$ErrorActionPreference = "Stop"

$releaseRoot = Join-Path $RepoRoot "release"
$stagingRoot = Join-Path $releaseRoot "staging"
$bundleRoot = Join-Path $stagingRoot "syft-cli-skills"
$zipPath = Join-Path $releaseRoot ("syft-cli-skills-" + $Version + ".zip")

if (Test-Path $stagingRoot) {
    Remove-Item -LiteralPath $stagingRoot -Recurse -Force
}

New-Item -ItemType Directory -Path $bundleRoot -Force | Out-Null
New-Item -ItemType Directory -Path $releaseRoot -Force | Out-Null

$items = Get-ChildItem -LiteralPath $RepoRoot -Force | Where-Object {
    $_.Name -notin @(".git", "release", "__pycache__")
}

foreach ($item in $items) {
    Copy-Item -LiteralPath $item.FullName -Destination $bundleRoot -Recurse -Force
}

if (Test-Path $zipPath) {
    Remove-Item -LiteralPath $zipPath -Force
}

Compress-Archive -Path (Join-Path $bundleRoot "*") -DestinationPath $zipPath

Write-Host "Created release bundle: $zipPath"
