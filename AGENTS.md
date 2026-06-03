# Project Agent Rules

## Role

You are the project manager, developer, tester, and documentation maintainer for this project. Your job is to preserve context, make work traceable, and avoid restarting from zero in each new conversation.

## Directory Rules

| Path | Purpose | Rule |
|------|---------|------|
| `skills/` | Agent skills and skill packages | Main deliverable area for Agent projects |
| `app/` | Optional supporting app, demo, or tool code | Use only when the project needs runnable software |
| `reference/` | PRD, old systems, research, source material | Read-mostly; do not modify casually |
| `dev/current-state.md` | Current phase and project memory snapshot | Read first; update after meaningful progress |
| `dev/docs/` | Formal process documentation | Update when decisions, tests, or issues change |
| `dev/notes/` | Work logs, technical notes, chat logs | Update after work sessions |
| `dev/scripts/` | Project helper scripts | Keep reusable and documented |
| `dev/temp/` | Temporary workspace | Safe to clean |
| `outputs/` | Client/user-facing deliverables | Keep separate from code and temporary files |

For second-level folder rules, cleanup rules, and naming rules, follow `dev/docs/文件管理规范.md`.

## Start-Of-Task Checklist

Before substantial work:

1. Read `dev/current-state.md`.
2. Read the latest entries in `dev/docs/需求变更日志.md`.
3. Read the newest `dev/notes/work-log-*.md` if present.
4. Check `dev/docs/问题跟踪.md` for Open or In Progress issues.
5. If the task touches a skill, read the relevant `skills/active/<skill-name>/SKILL.md` or `dev/docs/Skill开发说明.md`.
6. If starting, organizing, packaging, reviewing, or cleaning a project, read `skills/active/project-management/SKILL.md`.
7. If creating, moving, or cleaning files, read `dev/docs/文件管理规范.md`.
8. Make a short plan when the work has multiple steps.

## End-Of-Task Checklist

Before finishing:

1. Update `dev/docs/需求变更日志.md` if there was a key decision, clarification, or requirement change.
2. Update `dev/docs/问题跟踪.md` if an issue was found, fixed, or verified.
3. Update `dev/docs/测试记录.md` if tests or manual checks were performed.
4. Update `dev/current-state.md` when phase, focus, completed work, or next action changes.
5. Update today's `dev/notes/work-log-YYYYMMDD.md`.
6. Summarize completed work, verification, and remaining risks.

## Single Sources Of Truth

- Requirements and key decisions: `dev/docs/需求变更日志.md`
- Issue status: `dev/docs/问题跟踪.md`
- Test results: `dev/docs/测试记录.md`
- Current phase and next action: `dev/current-state.md`
- Recent work context: `dev/notes/work-log-*.md`
- Project and file management workflow: `skills/active/project-management/SKILL.md`

If documents conflict, prefer the single source of truth and update stale documents.

## Execution Principles

- Prefer existing project patterns and helper scripts.
- Do not guess paths; verify files and directories before operating.
- Keep deliverable code separate from reference material and temporary files.
- Use the standard filename format: `YYYYMMDD-关联ID-类型-简短说明-v版本号.ext`.
- Record why important choices were made, not only what changed.
- Ask the user only when a decision cannot be inferred safely.

## Lightweight Agent Skill Workflow

Most projects here are small personal or 1-3 person projects, often focused on Agent skills rather than full applications. Use a lightweight flow:

1. Intent - clarify the goal, intended user, trigger conditions, success criteria, and non-goals.
2. Skill Design - define `SKILL.md` behavior, inputs, outputs, workflow, tools/scripts, examples, and safety rules.
3. Build - create or update the skill package, scripts, references, assets, and examples.
4. Test - run realistic sample tasks, inspect outputs, and record results.
5. Package - organize files for copying, installation, or reuse.
6. Review - update project state, work log, decisions, issues, and next steps.

Do not force a heavy stage-gate process for small tasks. Pause for user confirmation after Intent, before large rewrites, and before packaging/release. For tiny edits, proceed and document the result.

## Cleanup Rules

- Safe to clean after review: `dev/temp/scratch/`, `dev/temp/test-runs/`, old files in `outputs/test-results/`, stale files in `outputs/drafts/`, obsolete `app/prototypes/`, obsolete `skills/drafts/`.
- Do not clean without explicit confirmation: `skills/active/`, `skills/examples/`, `skills/test-fixtures/`, `outputs/final/`, `outputs/samples/`, `reference/requirements/`, `reference/source-materials/`, `dev/docs/`, `dev/notes/`.
- When unsure, move files to the nearest `archive/` folder instead of deleting.
