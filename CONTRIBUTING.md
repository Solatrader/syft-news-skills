# Contributing

Thanks for helping improve `syft-news-skills`.

## Source Of Truth

The canonical skill content lives in `source-skills/`.
The mirrored directories:

- `.github/skills/`
- `codex-skills/`

are generated outputs.

If you want to change skill behavior:

1. edit the relevant skill in `source-skills/`
2. rebuild mirrors with `python scripts/build_skill_bundle.py`
3. validate with `powershell -ExecutionPolicy Bypass -File .\scripts\validate_skills.ps1`
4. regenerate the release zip if needed

## Before Opening A Pull Request

- keep skill names lowercase with hyphens
- keep `SKILL.md` UTF-8 encoded
- make sure each skill still has valid YAML frontmatter with `name` and `description`
- update docs or examples if behavior or installation guidance changes
- run the validation script and include the result in your PR summary

## Suggested Pull Request Scope

- one skill behavior change
- one documentation improvement
- one packaging or release improvement

Avoid bundling unrelated refactors in the same pull request.

## Reporting Problems

Open an issue with:

- which skill you used
- the exact prompt or task type
- what behavior you expected
- what happened instead
- whether the problem is in `source-skills/`, packaging, or installation docs
