# Agent Skill 开发说明

> 本文档用于小规模 Agent skill 项目。它借鉴专业 Web App 的阶段流程，但保留轻量、可执行、适合个人项目的部分。

---

## 一、适用场景

适用于：

- 创建新的 Codex/Agent skill
- 改造已有 skill
- 为某个项目沉淀可复用流程
- 为 AI Agent 准备脚本、参考资料、示例和测试用例

不默认适用于大型多人软件工程。如果项目变成完整 Web App，再扩展到更完整的需求、设计、前后端、部署流程。

---

## 二、轻量阶段

| 阶段 | 要回答的问题 | 产物 |
|------|--------------|------|
| Intent | 为什么做？谁用？成功标准是什么？不做什么？ | 需求简表 |
| Skill Design | 什么时候触发？怎么执行？输入输出是什么？ | skill spec |
| Build | 文件如何组织？脚本如何运行？示例在哪里？ | `skills/active/<skill-name>/` |
| Test | 用哪些真实任务验证？失败怎么记录？ | 测试记录 |
| Package | 如何复制、安装、交付？ | README、示例、输出 |
| Review | 哪些经验要沉淀？下一步是什么？ | 当前状态、工作日志 |

---

## 三、Skill Spec 模板

~~~markdown
# Skill Spec - <skill-name>

## 1. 目标

- 这个 skill 解决什么问题：
- 目标用户：
- 成功标准：

## 2. 触发条件

- 用户怎么说时应该使用：
- 不应该使用的情况：

## 3. 输入

| 输入 | 来源 | 必填 | 说明 |
|------|------|------|------|
| TODO | TODO | Yes/No | TODO |

## 4. 输出

| 输出 | 保存位置 | 验收标准 |
|------|----------|----------|
| TODO | TODO | TODO |

## 5. 标准流程

1. 恢复上下文
2. 检查输入
3. 读取必要参考资料
4. 按 `文件管理规范.md` 确认产物保存位置和命名
5. 执行核心任务
6. 验证输出
7. 更新日志和状态

## 6. 文件结构

```text
skills/active/<skill-name>/
├── SKILL.md
├── scripts/
├── references/
├── assets/
└── examples/
```

## 7. 测试样例

| 样例 | 输入 | 预期输出 | 状态 |
|------|------|----------|------|
| TODO | TODO | TODO | Pending |

## 8. 风险和边界

- 不处理：
- 需要用户确认：
- 可能失败：

## 9. 文件管理

- 草稿保存到：`skills/drafts/` 或 `outputs/drafts/`
- 当前样例保存到：`skills/examples/` 或 `outputs/samples/`
- 测试输入保存到：`skills/test-fixtures/`
- 测试结果保存到：`outputs/test-results/`
- 最终产物保存到：`outputs/final/`
- 命名格式：`YYYYMMDD-关联ID-类型-简短说明-v版本号.ext`
~~~

---

## 四、`SKILL.md` 建议结构

```markdown
---
name: <skill-name>
description: <什么时候使用这个 skill>
---

# <Skill Name>

## Purpose

## When To Use

## Inputs

## Workflow

## Outputs

## Validation

## Safety / Boundaries

## Examples
```

---

## 五、测试原则

- 每个 skill 至少准备 1 个最小样例和 1 个真实样例。
- 测试不只看脚本能否运行，还要看输出是否符合用户工作流。
- 失败时先记录到 `问题跟踪.md`，再修复。
- 通过后记录到 `测试记录.md`。
- 测试产物放入 `outputs/test-results/`；测试输入放入 `skills/test-fixtures/`。
- 当前可展示样例放入 `outputs/samples/` 或 `skills/examples/`，不要混在临时目录里。
