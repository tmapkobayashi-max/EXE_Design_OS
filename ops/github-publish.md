# GitHub Publish Notes

## Current State

- Local repository initialized
- Default branch: `main`
- Initial commit: `049c2fd` `Initialize Codex-based EXE Design OS workspace`
- Old assets such as `archive/`, `projects/nakama-1910/05_旧版/`, and other heavy legacy folders are intentionally left out of the first commit

## Create The New Repository

Create a new empty GitHub repository from the browser.

Recommended name:

- `exe-design-os`

Recommended visibility:

- Private

Do not add:

- README
- .gitignore
- license

## Connect And Push

After the repository is created, run:

```powershell
git remote add origin <NEW_REPO_URL>
git push -u origin main
```

Example:

```powershell
git remote add origin https://github.com/<account>/exe-design-os.git
git push -u origin main
```

## What Is Included In The First Push

- `exe-design-os/`
- `skills/`
- `tools/`
- `ops/`
- `projects/_template/`
- `projects/nakama-1910/01_brief`
- `projects/nakama-1910/02_work`
- `projects/nakama-1910/03_delivery`
- root docs such as `README.md`, `AGENTS.md`, `.gitignore`

## What Is Excluded For Now

- `archive/`
- `references/`
- `projects/nakama-1910/01_完成版/`
- `projects/nakama-1910/02_送付用/`
- `projects/nakama-1910/03_発注書/`
- `projects/nakama-1910/04_素材/`
- `projects/nakama-1910/05_旧版/`

These can be added later in separate commits if needed.
