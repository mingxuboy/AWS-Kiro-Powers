# AI-DLC Initialization

## MANDATORY - CANNOT BE SKIPPED

**CRITICAL**: This initialization process is MANDATORY and MUST be executed EVERY time AI-DLC Power is activated. There are NO exceptions to this rule.

## Purpose

This document defines the initialization process that MUST execute when AI-DLC Power is activated.

---

## Initialization Flow

```
Power Activated
       |
       v
Check aidlc-docs/ exists?
       |
   +---+---+
   |       |
  NO      YES
   |       |
   v       v
Create   Check aidlc-state.md
Structure      |
   |      +----+----+
   |      |         |
   v     Has       No state
Init    incomplete  file
Files   workflow    |
   |      |         v
   v      v       Init
Language RESUME   Files
Select   Prompt     |
                    v
                Language
                Select
```

---

## Directory Structure to Create

```
aidlc-docs/
├── inception/
│   ├── plans/
│   ├── reverse-engineering/
│   ├── requirements/
│   ├── user-stories/
│   └── application-design/
├── construction/
│   ├── plans/
│   └── build-and-test/
├── operations/
├── aidlc-state.md
└── audit.md
```

---

## File Templates

### aidlc-state.md (Initial)

```markdown
# AI-DLC Workflow State

**Created**: [ISO timestamp]
**Last Updated**: [ISO timestamp]
**Status**: Initializing
**Language**: Pending

---

## Current Phase
INITIALIZATION

## Current Stage
Language Selection

---

## Progress

### Completed Stages
(none)

### Skipped Stages
(none)

### Pending Stages
- [ ] Language Selection
- [ ] Workspace Detection
- [ ] (additional stages determined after workspace detection)

---

## Session Info

**Project Type**: Unknown (pending workspace detection)
**Complexity**: Unknown (pending assessment)
**Depth Level**: Unknown (pending workflow planning)
```

### audit.md (Initial)

```markdown
# AI-DLC Audit Trail

**Project Created**: [ISO timestamp]

---

## Initialization
**Timestamp**: [ISO timestamp]
**Event**: AI-DLC Power Activated
**Action**: Created aidlc-docs directory structure
**Files Created**:
- aidlc-docs/aidlc-state.md
- aidlc-docs/audit.md
- aidlc-docs/inception/ (directory structure)
- aidlc-docs/construction/ (directory structure)
- aidlc-docs/operations/ (directory)

---
```

---

## Resume Detection

### When to Show Resume Prompt

Show resume prompt if ALL conditions are met:
1. `aidlc-docs/aidlc-state.md` exists
2. Status is NOT "Completed"
3. At least one stage has been completed

### Resume Prompt (English)

```
AI-DLC Power activated.

**Previous session detected.**

**Last state**: [Current Stage from aidlc-state.md]
**Language**: [Language from aidlc-state.md]

► **A** - Resume from where we left off
  _Continue the previous workflow_

► **B** - Start fresh
  _Clear previous progress and begin new workflow_

---
Your choice:
```

### Resume Prompt (Chinese)

```
AI-DLC Power 已激活。

**检测到之前的会话。**

**上次状态**: [来自 aidlc-state.md 的当前阶段]
**语言**: [来自 aidlc-state.md 的语言]

► **A** - 从上次中断处继续
  _继续之前的工作流_

► **B** - 重新开始
  _清除之前的进度并开始新工作流_

---
您的选择:
```

---

## Resume Actions

### If User Chooses A (Resume)

1. Read `aidlc-state.md` to get current state
2. Read `audit.md` to understand context
3. Append to audit.md:
   ```markdown
   ---

   ## Session Resumed
   **Timestamp**: [ISO timestamp]
   **Previous Stage**: [stage name]
   **Action**: User chose to resume previous session

   ---
   ```
4. Continue from the last incomplete stage
5. Use the language from previous session

### If User Chooses B (Start Fresh)

1. Create backup: `aidlc-docs-backup-[timestamp]/`
2. Move all existing files to backup
3. Re-create fresh directory structure
4. Initialize new `aidlc-state.md` and `audit.md`
5. Append to new audit.md:
   ```markdown
   ---

   ## Fresh Start
   **Timestamp**: [ISO timestamp]
   **Action**: User chose to start fresh
   **Previous Session Backed Up To**: aidlc-docs-backup-[timestamp]/

   ---
   ```
6. Proceed to language selection

---

## State Updates

### After Language Selection

Update `aidlc-state.md`:
```markdown
**Language**: [English/Chinese]
**Status**: In Progress

## Current Stage
Workspace Detection
```

Append to `audit.md`:
```markdown
---

## Language Selection
**Timestamp**: [ISO timestamp]
**User Choice**: [A/B]
**Language Set**: [English/Chinese]

---
```

### After Each Stage Completion

Update `aidlc-state.md`:
- Move completed stage to "Completed Stages"
- Update "Current Stage" to next stage
- Update "Last Updated" timestamp

Append to `audit.md`:
- Log stage completion
- Log any user inputs/decisions
- Log artifacts created

---

## Error Handling

### If Directory Creation Fails

```
**Initialization Error**

Unable to create aidlc-docs directory structure.

**Possible causes:**
- Permission denied
- Disk full
- Path conflicts

Please check your workspace permissions and try again.
```

### If State File is Corrupted

1. Attempt to read audit.md for recovery
2. If audit.md is readable, reconstruct state
3. If both corrupted, offer fresh start option

---

## Summary

**MANDATORY RULES:**
- ✅ Initialization MUST execute - NO EXCEPTIONS
- ✅ Initialization MUST complete before any user interaction
- ✅ Directory structure MUST be created if not exists
- ✅ aidlc-state.md MUST be initialized or read
- ✅ audit.md MUST be initialized or appended
- ❌ NEVER skip initialization
- ❌ NEVER proceed without completing initialization

**Initialization is SILENT** - User should not see initialization details.

**First visible interaction** is either:
- Resume prompt (if previous session exists)
- Language selection (if new session)
