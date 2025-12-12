---
name: "kiro-aidlc"
displayName: "Kiro AI-DLC Development Workflow"
description: "AI-Driven Development Life Cycle for Kiro - A complete methodology guiding you through Inception, Construction, and Operations phases with adaptive intelligence"
keywords: ["kiro", "aidlc", "ai-driven", "development", "lifecycle", "workflow", "specs", "steering", "hooks", "inception", "construction", "operations"]
author: "AWS"
---

# Kiro AI-DLC Development Workflow

## Overview

AI-DLC (AI-Driven Development Life Cycle) is an intelligent software development workflow that adapts to your needs, maintains quality standards, and keeps you in control of the process. This power brings the complete AI-DLC methodology to Kiro, leveraging Kiro's core concepts: **Specs**, **Steering**, and **Hooks**.

### What is AI-DLC?

AI-DLC is a structured yet flexible software development process that adapts to your project's needs. Think of it as having an experienced software architect who:
- **Analyzes your requirements** and asks clarifying questions when needed
- **Plans the optimal approach** based on complexity and risk
- **Skips unnecessary steps** for simple changes while providing comprehensive coverage for complex projects
- **Documents everything** so you have a complete record of decisions and rationale
- **Guides you through each phase** with clear checkpoints and approval gates

## When to Use This Power

- Starting a new software development project from scratch (greenfield)
- Adding features to an existing codebase (brownfield)
- Need structured guidance through requirements, design, and implementation
- Want adaptive workflow that matches your project's complexity
- Require comprehensive documentation and audit trail
- Working with teams that need clear approval gates

## The Three-Phase Lifecycle

```
                     User Request
                          |
                          v
    +=======================================+
    |     INCEPTION PHASE                   |
    |     Planning & Application Design     |
    +---------------------------------------+
    | * Workspace Detection (ALWAYS)        |
    | * Reverse Engineering (CONDITIONAL)   |
    | * Requirements Analysis (ALWAYS)      |
    | * User Stories (CONDITIONAL)          |
    | * Workflow Planning (ALWAYS)          |
    | * Application Design (CONDITIONAL)    |
    | * Units Generation (CONDITIONAL)      |
    +=======================================+
                          |
                          v
    +=======================================+
    |     CONSTRUCTION PHASE                |
    |     Design, Implementation & Test     |
    +---------------------------------------+
    | * Per-Unit Loop (for each unit):      |
    |   - Functional Design (CONDITIONAL)   |
    |   - NFR Requirements (CONDITIONAL)    |
    |   - NFR Design (CONDITIONAL)          |
    |   - Infrastructure Design (COND)      |
    |   - Code Generation (ALWAYS)          |
    | * Build and Test (ALWAYS)             |
    +=======================================+
                          |
                          v
    +=======================================+
    |     OPERATIONS PHASE                  |
    |     Deployment & Monitoring           |
    +---------------------------------------+
    | * Operations (PLACEHOLDER)            |
    +=======================================+
                          |
                          v
                      Complete
```

## Available Steering Files

This power includes the complete AI-DLC methodology:

### Core Steering (always loaded)
- **00-interaction-protocol.md** - Interaction protocol with mandatory language selection (English/Chinese)
- **aws-aidlc-rules/core-workflow.md** - Main workflow definition and orchestration

### Common Rules
- **aws-aidlc-rule-details/common/initialization.md** - Initialization and resume logic
- **aws-aidlc-rule-details/common/process-overview.md** - Workflow overview with Mermaid diagram
- **aws-aidlc-rule-details/common/welcome-message.md** - User-facing welcome message (bilingual)
- **aws-aidlc-rule-details/common/question-format-guide.md** - Question formatting rules
- **aws-aidlc-rule-details/common/content-validation.md** - Content validation requirements
- **aws-aidlc-rule-details/common/session-continuity.md** - Session resumption guidance
- **aws-aidlc-rule-details/common/depth-levels.md** - Adaptive depth level definitions
- **aws-aidlc-rule-details/common/error-handling.md** - Error handling procedures
- **aws-aidlc-rule-details/common/overconfidence-prevention.md** - AI behavior guardrails
- **aws-aidlc-rule-details/common/terminology.md** - Standard terminology definitions
- **aws-aidlc-rule-details/common/workflow-changes.md** - Workflow modification rules

### Inception Phase
- **aws-aidlc-rule-details/inception/workspace-detection.md** - Project type detection
- **aws-aidlc-rule-details/inception/reverse-engineering.md** - Existing code analysis
- **aws-aidlc-rule-details/inception/requirements-analysis.md** - Requirements gathering
- **aws-aidlc-rule-details/inception/user-stories.md** - User story creation
- **aws-aidlc-rule-details/inception/workflow-planning.md** - Execution planning
- **aws-aidlc-rule-details/inception/application-design.md** - Application architecture
- **aws-aidlc-rule-details/inception/units-generation.md** - Work unit decomposition

### Construction Phase
- **aws-aidlc-rule-details/construction/functional-design.md** - Business logic design
- **aws-aidlc-rule-details/construction/nfr-requirements.md** - NFR assessment
- **aws-aidlc-rule-details/construction/nfr-design.md** - NFR pattern design
- **aws-aidlc-rule-details/construction/infrastructure-design.md** - Infrastructure mapping
- **aws-aidlc-rule-details/construction/code-generation.md** - Code generation workflow
- **aws-aidlc-rule-details/construction/build-and-test.md** - Build and test procedures

### Operations Phase
- **aws-aidlc-rule-details/operations/operations.md** - Operations placeholder

## How to Get Started

Activate AI-DLC and follow the prompts. The workflow will guide you one question at a time.

```
Using AI-DLC, [describe your development intent]
```

Example:
```
Using AI-DLC, create a REST API for user management with authentication
```

**What happens when activated:**

1. **Initialization (automatic)** - Creates `aidlc-docs/` directory with `audit.md` and `aidlc-state.md`
2. **Resume check** - If previous session exists, asks whether to resume or start fresh
3. **Language selection** - Choose English or 中文
4. **Describe your needs** - Tell AI-DLC what to build
5. **Guided workflow** - One stage at a time with approval at each checkpoint

## Language Support

AI-DLC supports bilingual interaction:

- **English** - All communication and documents in English
- **中文** - 所有沟通和文档使用中文

Language selection is the first prompt when AI-DLC activates. Code identifiers always remain in English.

## Key Principles

- **One Question at a Time**: Never overwhelm with multiple questions or steps
- **Progressive Disclosure**: Reveal workflow details only as you reach each stage
- **Wait for Approval**: Always pause and get user confirmation before proceeding
- **Bilingual Support**: English or Chinese, selected at session start
- **Adaptive Execution**: Skip unnecessary stages for simple changes
- **Complete Audit Trail**: Document all decisions in audit.md

## Quick Reference

### INCEPTION PHASE - "WHAT and WHY"

| Stage | Execution | Purpose |
|-------|-----------|---------|
| Workspace Detection | ALWAYS | Analyze project type |
| Reverse Engineering | CONDITIONAL | Analyze existing code |
| Requirements Analysis | ALWAYS | Gather requirements |
| User Stories | CONDITIONAL | Create user stories |
| Workflow Planning | ALWAYS | Create execution plan |
| Application Design | CONDITIONAL | Design components |
| Units Generation | CONDITIONAL | Decompose into units |

### CONSTRUCTION PHASE - "HOW"

| Stage | Execution | Purpose |
|-------|-----------|---------|
| Functional Design | CONDITIONAL | Design business logic |
| NFR Requirements | CONDITIONAL | Define NFRs |
| NFR Design | CONDITIONAL | NFR patterns |
| Infrastructure Design | CONDITIONAL | Infrastructure mapping |
| Code Generation | ALWAYS | Generate code |
| Build and Test | ALWAYS | Build and test |

### OPERATIONS PHASE - "DEPLOY and RUN"

| Stage | Execution | Purpose |
|-------|-----------|---------|
| Operations | PLACEHOLDER | Future deployment workflows |

## Directory Structure

AI-DLC generates artifacts in the following structure:

```
aidlc-docs/
├── inception/                  # INCEPTION PHASE artifacts
│   ├── plans/
│   │   ├── workspace-detection.md
│   │   ├── workflow-planning.md
│   │   ├── story-generation-plan.md
│   │   └── unit-of-work-plan.md
│   ├── reverse-engineering/    # Brownfield only
│   │   ├── architecture.md
│   │   ├── code-structure.md
│   │   ├── api-documentation.md
│   │   ├── component-inventory.md
│   │   ├── technology-stack.md
│   │   └── dependencies.md
│   ├── requirements/
│   │   ├── requirements.md
│   │   └── requirement-verification-questions.md
│   ├── user-stories/
│   │   ├── stories.md
│   │   └── personas.md
│   └── application-design/
│       ├── components.md
│       ├── component-methods.md
│       ├── services.md
│       ├── component-dependency.md
│       └── unit-of-work.md
├── construction/               # CONSTRUCTION PHASE artifacts
│   ├── plans/
│   │   └── {unit-name}-*.md
│   ├── {unit-name}/
│   │   ├── functional-design/
│   │   ├── nfr-requirements/
│   │   ├── nfr-design/
│   │   ├── infrastructure-design/
│   │   └── code/
│   └── build-and-test/
│       ├── build-instructions.md
│       ├── unit-test-instructions.md
│       ├── integration-test-instructions.md
│       └── build-and-test-summary.md
├── operations/                 # OPERATIONS PHASE artifacts
├── aidlc-state.md             # Dynamic state tracking
└── audit.md                    # Complete audit trail
```

## Kiro Integration

### Using as Kiro Power (Recommended)

This power is designed to be used natively within Kiro. Once installed, all steering files are accessed via the Power API:

```javascript
// Load core workflow
readPowerSteering("kiro-aidlc", "steering/aws-aidlc-rules/core-workflow.md")

// Load specific rule details
readPowerSteering("kiro-aidlc", "aws-aidlc-rule-details/common/welcome-message.md")
readPowerSteering("kiro-aidlc", "aws-aidlc-rule-details/inception/requirements-analysis.md")
```

### Power Structure

```
kiro-aidlc/
├── POWER.md                           # This file
├── steering/
│   ├── 00-interaction-protocol.md     # Initialization, language selection & interaction rules
│   └── aws-aidlc-rules/
│       └── core-workflow.md           # Main workflow orchestration
└── aws-aidlc-rule-details/
    ├── common/                        # Shared rules (11 files, includes initialization.md)
    ├── inception/                     # Inception phase (7 files)
    ├── construction/                  # Construction phase (6 files)
    └── operations/                    # Operations phase (1 file)
```

### Using with Kiro Specs

AI-DLC generates artifacts in the `aidlc-docs/` directory. These can be integrated with Kiro's spec system in `.kiro/specs/`.

### Using with Kiro Hooks

Create hooks for automation:
- Pre-commit hooks for validation
- Post-generation hooks for formatting
- Quality gate enforcement hooks

## Interaction Style

AI-DLC asks one question at a time using this format:

```
**Question: [Topic]**

**Context**: [Why this matters]

► **A** - [Option A]
  _Impact: [What this means]_

► **B** - [Option B]
  _Impact: [What this means]_

► **Other** - Provide your own answer

---
Your choice:
```

Simply reply with "A", "B", or provide your own answer.

## Troubleshooting

### Workflow Not Starting

**Symptom:** AI-DLC doesn't activate
**Solution:** Ensure your request starts with "Using AI-DLC, ..."

### Missing Artifacts

**Symptom:** Expected files not generated
**Solution:** Check aidlc-state.md for workflow status

### Questions Not Recognized

**Symptom:** Answers not being processed
**Solution:** Use proper format: `[Answer]: A`

---

**Source:** AWS AI-DLC Methodology
**Repository:** https://github.com/aws-samples/aidlc-workflows
**License:** MIT-0
