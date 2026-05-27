# Publish To GitHub

Use this checklist when you are ready to publish `syft-news-skills` as a new public repository.

## 1. Create The Repository On GitHub

Create a new public repository named:

`syft-news-skills`

Use the metadata in [repo-metadata.md](repo-metadata.md) for the description and topics.

Recommended GitHub options:

- public visibility
- do not auto-create a README
- do not auto-add a license
- do not auto-add `.gitignore`

This local directory already contains those files.

## 2. Initialize Local Git

From the repository root:

```powershell
git init
git branch -M main
git add .
git commit -m "feat: bootstrap syft news skills repository"
```

## 3. Add The Remote And Push

Replace `<YOUR_GITHUB_USERNAME>` with your account name:

```powershell
git remote add origin https://github.com/<YOUR_GITHUB_USERNAME>/syft-news-skills.git
git push -u origin main
```

If you prefer SSH:

```powershell
git remote add origin git@github.com:<YOUR_GITHUB_USERNAME>/syft-news-skills.git
git push -u origin main
```

## 4. Create The First Release

Use tag:

`v0.1.0`

Suggested workflow:

1. create a GitHub release
2. use [releases/v0.1.0.md](../releases/v0.1.0.md) as the release notes base
3. upload `release/syft-news-skills-v0.1.0.zip` as a release asset

## 5. Post-Publish Checks

- README renders correctly
- `.github/skills/` is visible in the web UI
- `codex-skills/` is visible in the web UI
- release zip downloads and extracts correctly
- issue templates and PR template appear as expected
