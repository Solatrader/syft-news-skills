# syft-cli-skills

`syft-cli-skills` is a public skill pack for Syft CLI based news workflows.
It packages one orchestration skill plus five atomic skills for Codex and GitHub Copilot users who want to work directly from `syft following`, `syft top`, and `syft search` without depending on the local Python MVP pipeline.

## Included Skills

| Skill | Purpose |
| --- | --- |
| `syft-news-pipeline` | Route a request to the right Syft-only workflow |
| `syft-profile-summary` | Turn `syft following` into reusable profile artifacts |
| `syft-daily-briefing` | Produce a profile-aware daily news briefing |
| `syft-storyline-tree` | Organize the news pool into trunk-branch storylines |
| `syft-storyline-backfill` | Extend a branch or trunk timeline with older or missing events |
| `syft-guidance-rulebook` | Persist durable editorial or preference rules |

## Who This Is For

- Codex users who want installable personal skills
- GitHub Copilot users who want repository-local or personal agent skills
- maintainers who want a reproducible skill bundle with examples and release assets

## Repository Layout

- `source-skills/`: canonical source skill folders maintained in this repository
- `.github/skills/`: GitHub Copilot project-skill mirror generated from `source-skills/`
- `codex-skills/`: Codex-oriented mirror generated from `source-skills/`
- `docs/`: installation, release, and repository guidance
- `examples/`: prompt and output-shape examples
- `scripts/`: build, validate, and release helpers

Edit `source-skills/`, then rebuild the mirrored skill roots with `scripts/build_skill_bundle.py`.
Do not hand-edit `.github/skills/` or `codex-skills/` unless you are fixing the build itself.

## Prerequisites

- `syft` is installed and available on the target machine
- `syft status` succeeds
- the user can access `syft following`, `syft top`, and `syft search`
- the user understands that final outputs are designed for Simplified Chinese by default unless they ask otherwise

## Install For Codex

Two supported paths:

1. Install from this GitHub repository by pointing your Codex skill installer at one or more directories under `codex-skills/`.
2. Download a release zip, then copy the desired skill directories into your Codex skills home such as `~/.codex/skills` or the directory backed by `CODEX_HOME/skills`.

See [docs/install-codex.md](docs/install-codex.md).

## Install For GitHub Copilot

Two supported paths:

1. Copy selected skill folders from `.github/skills/` into a target repository's `.github/skills/`.
2. Copy selected skill folders into a personal skill directory such as `~/.copilot/skills` or `~/.agents/skills`.

See [docs/install-github-copilot.md](docs/install-github-copilot.md).

## Usage Examples

Examples live in:

- [examples/prompt-examples.md](examples/prompt-examples.md)
- [examples/output-shapes.md](examples/output-shapes.md)

Typical prompts:

- `Use $syft-news-pipeline to build my profile and today's briefing from Syft CLI only.`
- `Use $syft-storyline-tree to turn today's briefing into a trunk-branch storyline tree.`
- `Use $syft-storyline-backfill to deepen the EVA branch without rebuilding the whole tree.`

## Build And Release

1. Update `source-skills/`.
2. Run `python scripts/build_skill_bundle.py`.
3. Run `powershell -ExecutionPolicy Bypass -File .\scripts\validate_skills.ps1`.
4. Run `powershell -ExecutionPolicy Bypass -File .\scripts\create_release_bundle.ps1`.

Release details are in [docs/release-process.md](docs/release-process.md).
First-time GitHub publishing steps are in [docs/publish-to-github.md](docs/publish-to-github.md).

## Contributing

Start with [CONTRIBUTING.md](CONTRIBUTING.md).
Repository metadata suggestions are in [docs/repo-metadata.md](docs/repo-metadata.md).

## License

This repository is licensed under Apache License 2.0.
See [LICENSE.txt](LICENSE.txt).
