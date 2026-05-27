# Publish To GitHub Wiki

GitHub Wiki is **not** the same git repository as the main project.
It is a separate repository that uses the `.wiki.git` suffix.

According to GitHub Docs, the normal workflow is:

1. create the initial wiki page on GitHub
2. clone the wiki repository locally
3. edit or copy pages
4. commit and push to the wiki repository

Official reference:

- [Adding or editing wiki pages](https://docs.github.com/en/communities/documenting-your-project-with-wikis/adding-or-editing-wiki-pages?apiversion=2022-11-28)
- [About wikis](https://docs.github.com/communities/documenting-your-project-with-wikis/about-wikis/)

## One-Time Setup

1. Open the repository Wiki tab on GitHub.
2. Click **Create the first page**.
3. Save a simple placeholder page.

After that, the wiki repository exists and you can clone it:

```bash
git clone https://github.com/Solatrader/syft-news-skills.wiki.git
```

## Recommended Local Sync Flow

Use the `wiki/` folder in the main repository as your source content.
Then copy its contents into the cloned wiki repository root.

Expected mapping:

- `wiki/Home.md` -> `Home.md`
- `wiki/What-Is-Syft-AI.md` -> `What-Is-Syft-AI.md`
- `wiki/Why-Use-Syft-CLI.md` -> `Why-Use-Syft-CLI.md`
- `wiki/Why-Use-Syft-Skills.md` -> `Why-Use-Syft-Skills.md`
- `wiki/Install-and-Setup.md` -> `Install-and-Setup.md`
- `wiki/Workflow-Examples.md` -> `Workflow-Examples.md`
- `wiki/Output-Examples.md` -> `Output-Examples.md`
- `wiki/FAQ.md` -> `FAQ.md`
- `wiki/_Sidebar.md` -> `_Sidebar.md`

## Push Example

```bash
git clone https://github.com/Solatrader/syft-news-skills.wiki.git
cd syft-news-skills.wiki
```

Copy the prepared wiki files from the main repository, then:

```bash
git add .
git commit -m "docs: publish initial wiki pages"
git push
```

## Why The Wiki Pages Use Absolute Asset Links

The GitHub Wiki repository does not share the same relative file layout as the main project repository.
For that reason, image and artifact links inside `wiki/` point back to the main repository using absolute GitHub URLs.
