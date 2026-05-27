# Install and Setup

## 1. Install Syft CLI

```bash
npm install -g @orionarm/syft-cli
```

Then sign in and confirm access:

```bash
syft login
syft status
```

## 2. Pick A Skill Installation Mode

### Codex

Use the built-in `$skill-installer` or copy folders manually.

Examples:

```text
Use $skill-installer to install https://github.com/Solatrader/syft-news-skills/tree/main/codex-skills/syft-news-pipeline
```

```text
Use $skill-installer to install these skill paths from the GitHub repo Solatrader/syft-news-skills: codex-skills/syft-news-pipeline, codex-skills/syft-profile-summary, codex-skills/syft-daily-briefing, codex-skills/syft-storyline-tree, codex-skills/syft-storyline-backfill, codex-skills/syft-guidance-rulebook
```

### GitHub Copilot

Copy selected folders from:

- `.github/skills/`

into a target repo's `.github/skills/` or into a personal skill directory.

## 3. Verify The Workflow

At minimum, confirm these commands work:

```bash
syft status
syft following
syft top
```

## 4. First Prompt

```text
Use $syft-news-pipeline to build my profile from Syft CLI only and produce today's personalized briefing.
```
