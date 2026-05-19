# Install For GitHub Copilot

This repository provides a GitHub Copilot oriented mirror under `.github/skills/`.

## Project-Local Installation

Use this when the skill should apply only inside one repository.

1. Create `.github/skills/` in the target repository if it does not already exist.
2. Copy one or more skill folders from this repository's `.github/skills/` into that directory.
3. Start a new Copilot session or reload skills if your client supports it.
4. Check that the skill appears in your available skills list or skill info view.

## Personal Installation

Use this when the skill should be reusable across projects.

Copy one or more skill folders into a personal skill directory such as:

- `~/.copilot/skills`
- `~/.agents/skills`

Then reload skills or start a new session.

## Which Skill To Start With

- start with `syft-news-pipeline` if you want one routing entry point
- add atomic skills if you want to force a specific workflow from a prompt

## Suggested First Run

`Use $syft-profile-summary to turn my syft following list into reusable profile artifacts.`
