---
name: "requirements-analyst"
displayName: "Requirements Analyst"
description: "Complete requirements engineering power with 6-phase methodology: Discovery, Value Sorting, Analysis, Clarification, Validation, and Specification"
keywords: ["requirements", "analysis", "clarification", "validation", "user stories", "acceptance criteria", "specification", "PRD", "BRD", "FURPS+", "KANO", "MoSCoW", "BDD", "GWT"]
author: "Kiro User"
---

# Requirements Analyst Power

A comprehensive requirements engineering power that guides you through the complete lifecycle of requirements management—from initial discovery to formal specification and baseline establishment.

---

## MANDATORY FIRST STEP: Language Selection

**CRITICAL**: You MUST ask user to select language BEFORE any other interaction. This is NON-NEGOTIABLE.

When user activates this power, you MUST first display this prompt:

```
Requirements Analyst Power activated.

Please select your preferred language / 请选择您的首选语言:

► **A** - English
  _All conversations and generated documents will be in English_

► **B** - 中文
  _所有对话和生成的文档都将使用中文_

---
Reply with "A" or "B" / 请回复 "A" 或 "B"
```

**WAIT for user response before proceeding.**

**Do NOT proceed with ANY workflow steps until language is confirmed.**

Once language is selected:
1. Use the selected language for ALL subsequent outputs
2. Proceed to Spec Selection (next section)

---

## MANDATORY SECOND STEP: Spec Selection

**CRITICAL**: After language selection, you MUST check for existing specs and prompt user to select or create.

### Step 1: Check for Existing Specs

Check if `.kiro/specs/` directory exists and contains any spec folders:

```bash
ls -d .kiro/specs/*/ 2>/dev/null
```

### Step 2: Prompt Based on Results

#### If Specs Exist:

Display the following prompt (in selected language):

**English:**
```
Found existing specs in .kiro/specs/:

| # | Spec Name | Last Modified | Status |
|---|-----------|---------------|--------|
| 1 | [folder-name-1] | [date] | [phase status] |
| 2 | [folder-name-2] | [date] | [phase status] |
| ... | ... | ... | ... |

**What would you like to do?**

► **[1-N]** - Continue working on an existing spec (enter number)
► **N** - Create a **N**ew spec

---
Reply with a number to select existing spec, or "N" to create new.
```

**中文:**
```
在 .kiro/specs/ 中发现已有规格:

| # | 规格名称 | 最后修改 | 状态 |
|---|----------|----------|------|
| 1 | [folder-name-1] | [date] | [阶段状态] |
| 2 | [folder-name-2] | [date] | [阶段状态] |
| ... | ... | ... | ... |

**请选择操作:**

► **[1-N]** - 继续现有规格（输入数字）
► **N** - 创建**新**规格

---
请输入数字选择现有规格，或输入 "N" 创建新规格。
```

#### If No Specs Exist:

Display the following prompt:

**English:**
```
No existing specs found.

**Please provide a name for your new spec:**

> Example: "user-authentication", "payment-system", "dashboard-redesign"

---
Enter spec name (lowercase, use hyphens for spaces):
```

**中文:**
```
未发现已有规格。

**请为新规格命名:**

> 示例: "user-authentication", "payment-system", "dashboard-redesign"

---
请输入规格名称（小写字母，用连字符代替空格）:
```

### Step 3: Handle User Response

#### If User Selects Existing Spec:

1. Set working spec to selected folder
2. Detect current phase status by checking which files exist:
   - `01-discovery.md` exists → Phase 1 completed
   - `02-sort.md` exists → Phase 2 completed
   - `03-analysis.md` exists → Phase 3 completed
   - `04-clarification.md` exists → Phase 4 completed
   - `05-validation.md` exists → Phase 5 completed
   - `06-specification.md` exists → Phase 6 completed
3. Suggest next phase or show phase menu

#### If User Creates New Spec:

1. Validate spec name (lowercase, alphanumeric, hyphens only)
2. Create directory: `.kiro/specs/[spec-name]/`
3. Confirm creation and proceed to Phase 1 (Discovery)

### Step 4: Confirm and Proceed

Display confirmation:

**English:**
```
✓ Working spec: [spec-name]
✓ Location: .kiro/specs/[spec-name]/
✓ Current status: [Phase X completed / New spec]

**Ready to proceed.** Type a phase command or describe your requirements.
```

**中文:**
```
✓ 当前规格: [spec-name]
✓ 位置: .kiro/specs/[spec-name]/
✓ 当前状态: [阶段 X 已完成 / 新规格]

**准备就绪。** 输入阶段命令或描述您的需求。
```

---

## Phase Trigger Commands

Users can directly trigger any phase using the following commands (English or Chinese):

| Phase | English | 中文 | Description |
|-------|---------|------|-------------|
| Phase 1 | **Discover** | **发现** | Start requirements discovery |
| Phase 2 | **Sort** | **排序** | Start value sorting |
| Phase 3 | **Analyze** | **分析** | Start requirements analysis |
| Phase 4 | **Clarify** | **澄清** | Start requirements clarification |
| Phase 5 | **Validate** | **验证** | Start requirements validation |
| Phase 6 | **Specify** | **规格化** | Start requirements specification |

When user inputs any trigger command, load the corresponding steering file and begin that phase.

---

## Steering Files

All detailed methodologies are in the `steering/` directory:

**Core Protocol**:
- `00-interaction-protocol.md` - Interaction guidelines, workflow options, output directory structure

**Phase Instructions**:
- `phase1-requirements-discovery.md` - Discovery methods
- `phase2-requirements-value-sorting.md` - MoSCoW, RICE, value prioritization
- `phase3-requirements-analysis.md` - User stories, use cases, domain modeling
- `phase4-requirements-clarification.md` - Systematic questioning
- `phase5-requirements-validation.md` - Review, acceptance criteria
- `phase6-requirements-specification.md` - PRD, BDD scenarios

**Helper Files**:
- `helper-multi-role-validation.md` - Multi-role validation perspectives
- `helper-diagram-standards.md` - UML diagram and documentation standards

**Output Templates** (prefix: `template-`):
- `template-discovery.md` - Discovery output template
- `template-sort.md` - Value sorting output template
- `template-analysis.md` - Analysis output template
- `template-clarification.md` - Clarification output template
- `template-validation.md` - Validation output template
- `template-specification.md` - Specification output template

**Deliverable Templates**:
- `template-prd.md` - PRD document template
- `template-openapi.yaml` - OpenAPI specification template
- `template-bdd.feature` - BDD/Gherkin scenario template

---

## File Dependencies (CRITICAL)

**When loading a phase file, you MUST also load its dependencies.**

### Dependency Matrix

| Phase File | Output Template | Helper Files | Deliverable Templates |
|------------|-----------------|--------------|----------------------|
| `phase1-requirements-discovery.md` | `template-discovery.md` | - | - |
| `phase2-requirements-value-sorting.md` | `template-sort.md` | - | - |
| `phase3-requirements-analysis.md` | `template-analysis.md` | `helper-diagram-standards.md` | - |
| `phase4-requirements-clarification.md` | `template-clarification.md` | - | - |
| `phase5-requirements-validation.md` | `template-validation.md` | `helper-multi-role-validation.md` | - |
| `phase6-requirements-specification.md` | `template-specification.md` | - | `template-prd.md`, `template-openapi.yaml`, `template-bdd.feature` |

### Loading Rules

1. **When entering a phase**: Load phase file + all its dependencies from the matrix above
2. **Output template**: Defines the structure of the phase output file (e.g., `03-analysis.md`)
3. **Helper files**: Provide standards and guidelines that MUST be followed during execution
4. **Deliverable templates**: Reference templates for creating standalone deliverables (PRD, API spec, BDD)

### Cross-Phase References

| Scenario | Required Files |
|----------|----------------|
| **Iterative Analysis** (Phase 3 after Phase 4/5) | Load existing `04-clarification.md` and/or `05-validation.md` if they exist |
| **Re-validation** (Phase 5 after updates) | Load updated `03-analysis.md` |
| **Custom Templates** (Phase 6) | Check `.kiro/templates/` and `~/.kiro/templates/` for user templates |

### Output Directory Structure

```
.kiro/specs/[feature-name]/
├── 01-discovery.md      ← Phase 1 output
├── 02-sort.md           ← Phase 2 output
├── 03-analysis.md       ← Phase 3 output
├── 04-clarification.md  ← Phase 4 output
├── 05-validation.md     ← Phase 5 output
├── 06-specification.md  ← Phase 6 output (summary)
├── prd.md               ← Phase 6 deliverable (PRD)
├── api.yaml             ← Phase 6 deliverable (OpenAPI)
└── features/            ← Phase 6 deliverable (BDD)
    └── *.feature
```
