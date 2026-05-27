# Install For Codex

This repository provides a Codex-oriented mirror under `codex-skills/`.

Before installing any of the skills, make sure Syft CLI is available on the same machine:

```bash
npm install -g @orionarm/syft-cli
syft login
syft status
```

If `syft` is not found or `syft status` fails because the CLI is missing, complete the setup above first and then continue with skill installation.

## Option 1: Install From GitHub

If your Codex environment has the built-in `$skill-installer`, the simplest path is to ask Codex to install directly from GitHub.

Copyable prompts:

- install the orchestration entry point only:

```text
Use $skill-installer to install https://github.com/Solatrader/syft-news-skills/tree/main/codex-skills/syft-news-pipeline
```

- install one atomic skill directly:

```text
Use $skill-installer to install https://github.com/Solatrader/syft-news-skills/tree/main/codex-skills/syft-daily-briefing
```

- install the full pack:

```text
Use $skill-installer to install these skill paths from the GitHub repo Solatrader/syft-news-skills: codex-skills/syft-news-pipeline, codex-skills/syft-profile-summary, codex-skills/syft-daily-briefing, codex-skills/syft-storyline-tree, codex-skills/syft-storyline-backfill, codex-skills/syft-guidance-rulebook
```

If you prefer to reason about the raw paths yourself, the Codex-oriented mirror lives under:

- `codex-skills/syft-news-pipeline`
- `codex-skills/syft-profile-summary`
- `codex-skills/syft-daily-briefing`
- `codex-skills/syft-storyline-tree`
- `codex-skills/syft-storyline-backfill`
- `codex-skills/syft-guidance-rulebook`

Recommended approach:

1. install the pipeline skill if you want one entry point
2. install the atomic skills if you want direct invocation by skill name
3. restart Codex to pick up newly installed skills if your client does not reload them automatically

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
