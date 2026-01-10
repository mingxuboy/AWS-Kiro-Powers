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
2. Load `steering/00-interaction-protocol.md` and follow the activation response

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
