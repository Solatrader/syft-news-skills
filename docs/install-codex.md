# Install For Codex

This repository provides a Codex-oriented mirror under `codex-skills/`.

## Option 1: Install From GitHub

If your Codex environment supports GitHub-path skill installation, install one or more directories under:

- `codex-skills/syft-news-pipeline`
- `codex-skills/syft-profile-summary`
- `codex-skills/syft-daily-briefing`
- `codex-skills/syft-storyline-tree`
- `codex-skills/syft-storyline-backfill`
- `codex-skills/syft-guidance-rulebook`

Recommended approach:

1. install the pipeline skill if you want one entry point
2. install the atomic skills if you want direct invocation by skill name

## Option 2: Install From A Release Zip

1. Download a release zip from GitHub Releases.
2. Extract the archive.
3. Copy the desired folders from `codex-skills/` into your Codex skill directory.

Typical destinations:

- `~/.codex/skills`
- `$CODEX_HOME/skills`

## Verify Installation

After installation:

1. restart your Codex client or reload skills if your client supports it
2. ask for the available skills list
3. verify the expected names appear

## Suggested First Run

Start with:

`Use $syft-news-pipeline to build my profile from Syft CLI only and produce today's briefing.`
