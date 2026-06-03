---
name: project-management
description: |
  Use this skill when starting, organizing, managing, reviewing, testing, packaging,
  or cleaning up a small Codex-assisted project. It is designed for personal or
  1-3 person Agent / Coding Agent projects, especially projects whose main output
  is an Agent skill rather than a large Web App.
---

# Project Management Skill

This skill keeps a small Agent project organized, traceable, and easy for non-engineers to navigate.

It combines:

- Lightweight project workflow
- Current-state recovery
- Decision, issue, and test tracking
- Agent skill development stages
- Lightweight file and deliverable management as an operating rule, not just documentation

## When To Use

Use this skill when the user asks to:

- start a new project
- initialize a project workspace
- organize project files
- create or improve a project management template
- create, update, test, package, or archive an Agent skill
- decide where a file should go
- name a project output
- clean temporary files or old drafts
- classify drafts, samples, test artifacts, final deliverables, fixtures, or archives
- summarize project state or next steps

## Core Directory Map

Keep the first-level directories stable:

```text
ProjectName/
├── skills/      # Agent skills and skill packages
├── app/         # Optional supporting app, demo, or tool code
├── reference/   # Requirements, source materials, research
├── dev/         # Project memory, docs, logs, scripts, temp workspace
└── outputs/     # User/client-facing deliverables
```

## Required Context Files

At the start of substantial work, read:

1. `dev/current-state.md`
2. `dev/docs/需求变更日志.md`
3. newest `dev/notes/work-log-*.md`, if present
4. `dev/docs/问题跟踪.md`
5. `dev/docs/文件管理规范.md` when creating, moving, naming, archiving, or cleaning files

If `dev/docs/文件管理规范.md` exists, it is the source of truth for file placement, naming, versioning, and cleanup.

## Lightweight Workflow

Use this flow for most personal Agent projects:

| Phase | Goal | Main Output | Confirmation |
|-------|------|-------------|--------------|
| Intent | Clarify goal, user, success criteria, non-goals | brief requirement / acceptance criteria | confirm |
| Skill Design | Define trigger, workflow, inputs, outputs, boundaries | skill spec / `SKILL.md` outline | confirm for major skills |
| Build | Implement skill package, scripts, examples | `skills/active/<skill-name>/` | usually no |
| Test | Run realistic samples and inspect outputs | `dev/docs/测试记录.md`, `outputs/test-results/` | if failures or risk |
| Package | Prepare reusable/copyable deliverable | `outputs/final/` or `skills/active/` | confirm before release |
| Review | Update memory and next steps | `dev/current-state.md`, work log | no |

Do not force heavy stage gates for small tasks. For tiny changes, proceed and document the result.

## Mandatory Artifact Workflow

Whenever creating, moving, renaming, packaging, testing, or cleaning project files, follow this lightweight artifact workflow:

```text
1. Classify the artifact
2. Choose the correct second-level folder
3. Generate or verify the filename
4. Save or move the file
5. Record the artifact in the appropriate project memory file
6. Tell the user whether it is safe to clean later
```

### 1. Classify The Artifact

Use one of these labels before deciding where the file goes:

| Label | Meaning | Default location |
|-------|---------|------------------|
| `draft` | unfinished or unconfirmed work | `outputs/drafts/`, `skills/drafts/`, or `dev/temp/drafts/` |
| `sample` | current demo or canonical example | `outputs/samples/` or `skills/examples/` |
| `test-result` | output from a test or manual verification | `outputs/test-results/` |
| `fixture` | input used for repeatable tests | `skills/test-fixtures/` |
| `final` | confirmed deliverable | `outputs/final/` |
| `reference` | background material or user-provided source | `reference/requirements/`, `reference/source-materials/`, or `reference/research/` |
| `archive` | old but still traceable file | nearest `archive/` folder |

### 2. Choose The Correct Folder

If the artifact is useful to users or stakeholders, prefer `outputs/`.
If the artifact is part of a skill package, prefer `skills/`.
If it is project memory, use `dev/docs/` or `dev/notes/`.
If it is only a temporary working file, use `dev/temp/`.
If it is source material from the user, use `reference/`.

### 3. Generate The Filename

Use this format for drafts, samples, test artifacts, fixtures, packages, and final deliverables:

```text
YYYYMMDD-关联ID-类型-简短说明-v版本号.ext
```

Examples:

```text
20260603-T001-test-result-chat-logger-v01.md
20260603-TASK002-draft-skill-spec-imagegen-v02.md
20260603-M1-sample-email-parser-v01.json
20260603-FINAL-final-skill-package-chat-logger-v01.zip
```

Do not use vague names such as `new`, `latest`, `final_final`, `copy`, or `untitled`.

### 4. Record The Artifact

Record new or important artifacts as follows:

| Artifact type | Record where |
|---------------|--------------|
| decision-related file | `dev/docs/需求变更日志.md` |
| test result or test output | `dev/docs/测试记录.md` |
| issue reproduction or fix evidence | `dev/docs/问题跟踪.md` |
| meaningful work output | today's `dev/notes/work-log-YYYYMMDD.md` |
| phase or next-step change | `dev/current-state.md` |

For trivial temporary files in `dev/temp/scratch/`, recording is optional.

## File Placement Rules

Use the second-level folder rules from `dev/docs/文件管理规范.md`. The summary below is only a quick reference.

### `skills/`

| Folder | Use |
|--------|-----|
| `active/` | current usable or deliverable skill packages |
| `drafts/` | unfinished skill drafts and experiments |
| `examples/` | skill usage examples |
| `test-fixtures/` | test inputs and fixtures |
| `archive/` | old or retired skill versions |

### `outputs/`

| Folder | Use |
|--------|-----|
| `final/` | confirmed final deliverables |
| `drafts/` | viewable but unconfirmed deliverables |
| `samples/` | current demos, canonical examples |
| `test-results/` | test outputs, screenshots, reports |
| `archive/` | old deliverables |

### `dev/temp/`

| Folder | Use |
|--------|-----|
| `scratch/` | throwaway scratch files |
| `drafts/` | temporary unfinished drafts |
| `test-runs/` | temporary run outputs |

## Filename Rule

Use this format for outputs, drafts, samples, fixtures, packages, and test artifacts:

```text
YYYYMMDD-关联ID-类型-简短说明-v版本号.ext
```

Examples:

```text
20260603-T001-test-result-chat-logger-v01.md
20260603-TASK002-draft-skill-spec-imagegen-v02.md
20260603-M1-sample-email-parser-v01.json
20260603-FINAL-final-skill-package-chat-logger-v01.zip
```

Allowed type words:

| Type | Meaning |
|------|---------|
| `draft` | unfinished draft |
| `sample` | current example or demo |
| `test-result` | test output or report |
| `final` | confirmed final deliverable |
| `fixture` | test input or fixture |
| `reference` | reference material |
| `archive` | archived historical file |

Do not use vague names such as `new`, `latest`, `final_final`, or `copy`.

## Cleanup Rules

Safe to clean after review:

- `dev/temp/scratch/`
- `dev/temp/test-runs/`
- old files in `outputs/test-results/` after results are recorded
- stale files in `outputs/drafts/`, keeping the latest 1-3 versions
- obsolete `app/prototypes/`
- obsolete `skills/drafts/`

Do not clean without explicit confirmation:

- `AGENTS.md`
- `dev/current-state.md`
- `dev/docs/`
- `dev/notes/`
- `skills/active/`
- `skills/examples/`
- `skills/test-fixtures/`
- `outputs/final/`
- `outputs/samples/`
- `reference/requirements/`
- `reference/source-materials/`

When unsure, move files to the nearest `archive/` folder instead of deleting.

## Cleanup Procedure

When the user asks to clean files:

1. List candidate files by folder.
2. Classify each candidate as `safe-to-clean`, `confirm-first`, or `do-not-clean`.
3. Explain why each category is safe or risky.
4. Move uncertain files to `archive/` instead of deleting them.
5. Update the work log if cleanup changes project state.

Never delete these without explicit user confirmation:

- final deliverables
- current samples
- active skills
- test fixtures used by current tests
- source materials from the user
- project memory files in `dev/docs/` and `dev/notes/`

## Phase Integration

### Intent

Capture expected artifacts early:

- What final output should exist?
- What sample should remain available for teammates?
- What test artifacts are expected?
- Which files are user-provided source material?

### Skill Design

Define file management in the skill spec:

- draft location
- sample location
- fixture location
- test result location
- final package location
- filename pattern

### Build

Create or update files in the correct second-level folder from the beginning. Avoid leaving important files in `dev/temp/`.

### Test

Put repeatable inputs in `skills/test-fixtures/`.
Put visible test outputs in `outputs/test-results/`.
Record the test in `dev/docs/测试记录.md`.

### Package

Put confirmed reusable skill packages or delivery bundles in `outputs/final/`.
Keep the active skill source in `skills/active/<skill-name>/`.

### Review

Before finishing, give a short artifact summary:

```text
Created/updated:
- <path> - <draft/sample/test-result/final/etc.> - <safe to clean? yes/no>
```

## End-Of-Task Checklist

Before finishing:

1. Update `dev/current-state.md` if phase, focus, completed work, or next step changed.
2. Update `dev/docs/需求变更日志.md` for decisions or requirement changes.
3. Update `dev/docs/问题跟踪.md` for found/fixed/verified issues.
4. Update `dev/docs/测试记录.md` for tests and manual checks.
5. Update today's `dev/notes/work-log-YYYYMMDD.md` after meaningful work.
6. Make sure new outputs follow the directory and filename rules.
7. If artifacts were created, tell the user which are final, sample, draft, test-result, or temporary.
8. If any cleanup is recommended, clearly say what can be cleaned and what should be kept.

## User-Friendly Rule

A non-engineer should be able to open a folder and immediately know:

- whether a file is a draft, sample, test result, final deliverable, or archive
- which task/test/milestone produced it
- when it was produced
- which version it is
- whether it is safe to clean
