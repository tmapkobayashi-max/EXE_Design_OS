# Large Asset Policy

Last updated: 2026-07-29

## Purpose

Keep the main Git repository fast, cloneable, and reliable while still preserving the source material needed to build EXE proposal decks.

## Current Observation

As of July 29, 2026, the largest tracked file in the active repository is:

- `projects/nakama-1910/01_brief/source/01.レンガ詳細_Digital_Nakama_Blueprint.pdf`
- Size: `51.46 MB`

This already exceeds GitHub's recommended file size threshold of `50 MB`, even though the push succeeded.

## Rule Set

### 1. Soft limit

- Files above `25 MB` should be reviewed before committing.
- Ask: does this need to live in the main repo, or can it live in archive / external storage / LFS?

### 2. Hard operating rule

- Files above `50 MB` should not be added to the main repo by default.
- Exception only when all of the following are true:
  - the file is essential to reproduce a live project
  - there is no smaller equivalent source
  - we intentionally accept the repo weight increase

### 3. Preferred storage by asset type

- `03_delivery/` final HTML, PDFs, and production images:
  - keep in the main repo when they are part of the live deliverable set
- `01_brief/source/` reference PDFs:
  - keep only if they are reasonably small and directly needed for project continuity
- raw PPTX, DOCX, ZIP archives, and historical exports:
  - prefer `archive/` or external storage
- repeated copies of the same large file across multiple folders:
  - avoid; keep one canonical copy only

### 4. LFS trigger

Consider Git LFS when either condition is true:

- one file exceeds `50 MB` and must remain versioned
- multiple binary assets above `10 MB` are expected to change over time

### 5. Archive rule

The following categories should usually stay out of the main tracked set:

- `archive/`
- old proposal generations
- send-only ZIP packages
- duplicated raw source files
- legacy work folders kept only for reference

## Immediate Action For This Repo

Recommended next cleanup:

1. Remove `projects/nakama-1910/01_brief/source/01.レンガ詳細_Digital_Nakama_Blueprint.pdf` from tracked history in the main branch and replace it with one of:
   - a smaller extracted reference
   - a note pointing to external storage
   - Git LFS, if versioning is required
2. Add a lightweight source index file in `01_brief/source/` describing where the canonical heavy file lives.
3. Avoid committing the duplicated copy in `projects/nakama-1910/04_素材/` to the main repo.

## Decision For Now

Default policy:

- live deliverables stay in Git
- oversized raw source files do not stay in main Git unless explicitly justified
