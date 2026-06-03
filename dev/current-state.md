# Current Project State

> Codex reads this file first when resuming the project. Keep it short and current.

---

## 当前阶段

Intent / Skill Design / Build / Test / Package / Review

**当前状态：** Review - project-management skill 已整合轻量文件管理规范，bootstrap 脚本已验证可生成内置管理 skill。

## 项目概况

| 项目 | 内容 |
|------|------|
| 项目名称 | agent-project-template |
| 项目类型 | Agent skill + project management template |
| 主要交付物 | Codex 项目模板、project-management skill、轻量文件管理规范 |
| 当前负责人 | User + Codex |

## 已完成

- 建立一级目录：`skills/`、`app/`、`reference/`、`dev/`、`outputs/`
- 建立二级轻量文件管理目录
- 编写 `dev/docs/文件管理规范.md`
- 创建内置 `skills/active/project-management/SKILL.md`
- 将文件分类、命名、清理和归档规则融入 project-management skill
- 更新 bootstrap 脚本，使新项目自动带上内置管理 skill

## 当前焦点

- 检查模板文档和内置 skill 是否保持一致，准备后续提交/发布。

## 下一步

1. 根据需要提交并推送到 GitHub。
2. 后续如新增更多内置 skill，按 `skills/active/<skill-name>/` 结构管理。

## Open 问题

- 详见 `dev/docs/问题跟踪.md`

## 重要决策索引

- 详见 `dev/docs/需求变更日志.md`
