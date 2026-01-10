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
