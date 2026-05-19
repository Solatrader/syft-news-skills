#!/usr/bin/env python3
"""Build mirrored skill roots from source-skills/."""

from __future__ import annotations

import argparse
import shutil
from pathlib import Path

SKILL_NAMES = [
    "syft-news-pipeline",
    "syft-profile-summary",
    "syft-daily-briefing",
    "syft-storyline-tree",
    "syft-storyline-backfill",
    "syft-guidance-rulebook",
]


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Build the mirrored skill bundle directories.")
    parser.add_argument(
        "--repo-root",
        type=Path,
        default=Path(__file__).resolve().parents[1],
        help="Repository root containing source-skills/ and target mirrors.",
    )
    return parser.parse_args()


def ensure_skill_source(skill_dir: Path) -> None:
    if not skill_dir.is_dir():
        raise FileNotFoundError(f"Missing source skill directory: {skill_dir}")
    if not (skill_dir / "SKILL.md").is_file():
        raise FileNotFoundError(f"Missing SKILL.md in source skill directory: {skill_dir}")


def reset_dir(path: Path) -> None:
    if path.exists():
        shutil.rmtree(path)
    path.mkdir(parents=True, exist_ok=True)


def main() -> int:
    args = parse_args()
    repo_root = args.repo_root.resolve()
    source_root = repo_root / "source-skills"
    github_root = repo_root / ".github" / "skills"
    codex_root = repo_root / "codex-skills"
    license_path = repo_root / "LICENSE.txt"

    if not license_path.is_file():
        raise FileNotFoundError(f"Missing repository license: {license_path}")

    for skill_name in SKILL_NAMES:
        ensure_skill_source(source_root / skill_name)

    reset_dir(github_root)
    reset_dir(codex_root)

    for target_root in (github_root, codex_root):
        for skill_name in SKILL_NAMES:
            src = source_root / skill_name
            dst = target_root / skill_name
            shutil.copytree(src, dst)
            shutil.copy2(license_path, dst / "LICENSE.txt")

    print(f"Built {len(SKILL_NAMES)} skills into {github_root}")
    print(f"Built {len(SKILL_NAMES)} skills into {codex_root}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
