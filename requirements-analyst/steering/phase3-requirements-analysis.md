---
inclusion: agent
---

# Phase 3: Requirements Analysis

**Phase Objective**: Deep analysis of dependencies, feasibility, and implementation approaches.
**Time Allocation**: 20% of total effort
**Your Role**: Professional Requirements Analyst

---

## Quick Reference

| Method | Focus | Output | When to Use |
|--------|-------|--------|-------------|
| User Story Mapping | User activities and priorities | Story map with MVP | All projects |
| Use Case Analysis | Actor-system interactions | Use case documents | Complex interactions |
| Success Criteria | Measurable outcomes | SMART criteria list | All requirements |
| Event Storming | Domain events and commands | Domain model | Complex business logic |
| Dependency Analysis | Requirement relationships | Dependency graph | Multi-requirement projects |

---

## Output

**File**: `.kiro/specs/[feature-name]/03-analysis.md`
**Template**: See `template-analysis.md`

---

## MANDATORY: Diagram and Documentation Standards

**CRITICAL**: You MUST load and follow `helper-diagram-standards.md` BEFORE creating any diagrams or documentation. This is NON-NEGOTIABLE.

### Expression Priority (MUST FOLLOW)

```
1st Priority: Diagram (Visual representation)
    └── 2nd Priority: UML Diagram (Standard notation)
        └── 3rd Priority: Mermaid Syntax (Generation method)
```

**Rule**: ALWAYS prefer diagrams over text/tables. When using diagrams, ALWAYS prefer UML. When generating UML, ALWAYS use Mermaid syntax.

| Expression Method | Priority | When to Use |
|-------------------|----------|-------------|
| **UML Diagram (Mermaid)** | 🥇 Highest | Default choice for all requirements |
| **Other Diagrams (Mermaid)** | 🥈 Second | When UML is not applicable |
| **Table + Diagram** | 🥉 Third | Supplementary details only |
| **Text/Table only** | ❌ Avoid | Only when diagram is impossible |

### Key Rules Summary

1. **UML Use Case Diagram**:
   - Actors: stick figure icon
   - Use Cases: ellipse shape
   - System Boundary: dashed rectangle
   - Relationships: `<<include>>` and `<<extend>>` stereotypes
   - ❌ PROHIBITED: Simple flowcharts instead of UML

2. **Business Process (Activity Diagram)**:
   - Core user flows MUST use UML Activity Diagram
   - Tables alone are NOT sufficient
   - Parallel processing MUST use fork/join or `par` syntax

3. **Use Case Main Flow (Sequence Diagram)**:
   - Main flows MUST use Sequence Diagram
   - Include all participants: User, UI, System, Agent, Database
   - Parallel execution MUST use `par` syntax
   - ✅ ALWAYS accompany tables with Sequence Diagrams (tables alone are insufficient)

4. **Document Format**:
   - Each analysis item on separate line
   - Key terms in **bold**
   - Consistent indentation
   - Clear visual hierarchy

5. **Diagram Quality**:
   - Use Mermaid syntax for all diagrams
   - Apply color coding for element types
   - Complex processes MUST be decomposed

---

## Pre-Check (GATE CHECK)

**MUST pass this check before starting**:

- [ ] **Phase 2 completed?** Verify `02-sort.md` exists with value sorting matrix
- [ ] **Inputs available?** Confirm prioritization (MoSCoW/RICE) is complete
- [ ] **Unclear items identified?** List requirements flagged for clarification
- [ ] **Helper file loaded?** Load `helper-diagram-standards.md` for diagram rules

**If ANY check fails**: STOP. NEVER proceed. Return to Phase 2 or load required files.

---

## Your Tasks (NON-NEGOTIABLE)

1. **User Story Mapping**: Create complete user story maps
2. **Use Case Analysis**: Draw main use case diagrams and write use case documents
3. **Success Criteria Definition**: Define measurable success criteria for each requirement
4. **Dependency Analysis**: Map requirement dependencies and identify conflicts
5. **Feasibility Assessment**: Evaluate technical feasibility and risks

## Professional Qualities You MUST Demonstrate

- ✅ Use professional methods (user story mapping, use case analysis, event storming)
- ✅ Deep analysis (requirement dependencies, technical feasibility)
- ✅ Domain modeling (identify bounded contexts, aggregates)
- ✅ Visual output (story maps, use case diagrams, domain models)

## What You MUST NEVER Do

- ❌ NEVER be superficial - deep analysis is mandatory
- ❌ NEVER ignore requirement dependencies - document all relationships
- ❌ NEVER skip technical feasibility assessment - it is required
- ❌ NEVER force-fit DDD just to use it (DDD suits complex business; simple projects can use simplified models)

---

## Method 1: User Story Mapping

**OUTPUT TEMPLATE**: Use `template-user-story.md` for user story document output format.

### User Story Format

```
As a [role],
I want [feature/capability],
So that [business value/benefit].
```

### INVEST Criteria

Each user story MUST be:
- **I**ndependent: Can be developed separately
- **N**egotiable: Details can be discussed
- **V**aluable: Delivers value to user/business
- **E**stimable: Can be sized/estimated
- **S**mall: Fits within a sprint
- **T**estable: Has clear acceptance criteria

### User Story Map Template

```
┌─────────────────────────────────────────────────────────────────────┐
│                         USER ACTIVITY FLOW                          │
├─────────────┬─────────────┬─────────────┬─────────────┬────────────┤
│  Activity 1 │  Activity 2 │  Activity 3 │  Activity 4 │ Activity 5 │
│  (Browse)   │  (Select)   │  (Purchase) │  (Receive)  │ (Support)  │
├─────────────┼─────────────┼─────────────┼─────────────┼────────────┤
│ ─── MVP ─── │ ─── MVP ─── │ ─── MVP ─── │ ─── MVP ─── │ ────────── │
│ Story 1.1   │ Story 2.1   │ Story 3.1   │ Story 4.1   │            │
│ Story 1.2   │ Story 2.2   │ Story 3.2   │             │            │
├─────────────┼─────────────┼─────────────┼─────────────┼────────────┤
│ ─── V1.1 ── │ ─── V1.1 ── │ ─── V1.1 ── │ ─── V1.1 ── │ ─── V1.1 ─ │
│ Story 1.3   │ Story 2.3   │ Story 3.3   │ Story 4.2   │ Story 5.1  │
│             │             │ Story 3.4   │             │            │
├─────────────┼─────────────┼─────────────┼─────────────┼────────────┤
│ ─── V2.0 ── │ ─── V2.0 ── │ ─── V2.0 ── │ ─── V2.0 ── │ ─── V2.0 ─ │
│ Story 1.4   │ Story 2.4   │ Story 3.5   │ Story 4.3   │ Story 5.2  │
└─────────────┴─────────────┴─────────────┴─────────────┴────────────┘
```

### Story Map Documentation

```markdown
## User Story Map: [Feature/Epic Name]

### User Activities (Left to Right = User Flow)
1. **[Activity 1]**: [Description of what user is trying to do]
2. **[Activity 2]**: [Description]
3. **[Activity 3]**: [Description]

### MVP Stories (Minimum to launch)
| Activity | Story ID | Story | Priority |
|----------|----------|-------|----------|
| Activity 1 | US-001 | As a [role], I want... | P0 |
| Activity 2 | US-002 | As a [role], I want... | P0 |

### V1.1 Stories (First enhancement)
| Activity | Story ID | Story | Priority |
|----------|----------|-------|----------|
| Activity 1 | US-003 | As a [role], I want... | P1 |

### V2.0 Stories (Future)
| Activity | Story ID | Story | Priority |
|----------|----------|-------|----------|
| Activity 1 | US-004 | As a [role], I want... | P2 |
```

---

## Method 2: Use Case Analysis

### Use Case Diagram Elements

```
┌─────────────────────────────────────────┐
│              System Boundary            │
│                                         │
│    ┌─────────┐      ┌─────────┐        │
│    │ Use Case│      │ Use Case│        │
│    │    A    │─────►│    B    │        │
│    └─────────┘      └─────────┘        │
│         │                │              │
│         │ <<include>>    │ <<extend>>   │
│         ▼                ▼              │
│    ┌─────────┐      ┌─────────┐        │
│    │ Use Case│      │ Use Case│        │
│    │    C    │      │    D    │        │
│    └─────────┘      └─────────┘        │
│                                         │
└─────────────────────────────────────────┘
     │                           │
     │                           │
  ┌──┴──┐                     ┌──┴──┐
  │Actor│                     │Actor│
  │  1  │                     │  2  │
  └─────┘                     └─────┘
```

### Use Case Document Template

```markdown
## Use Case: [UC-XXX] [Use Case Name]

### Basic Information
| Field | Value |
|-------|-------|
| **Use Case ID** | UC-XXX |
| **Name** | [Descriptive name] |
| **Primary Actor** | [Who initiates] |
| **Secondary Actors** | [Other participants] |
| **Level** | User Goal / Subfunction |
| **Priority** | P0 / P1 / P2 |

### Description
[Brief description of what this use case accomplishes]

### Preconditions
1. [Condition that must be true before starting]
2. [Another precondition]

### Postconditions (Success)
1. [State after successful completion]
2. [Another post-condition]

### Main Flow (Happy Path)
| Step | Actor | System |
|------|-------|--------|
| 1 | [Actor action] | |
| 2 | | [System response] |
| 3 | [Actor action] | |
| 4 | | [System response] |

### Alternative Flows
**A1: [Alternative scenario name]**
- Branches from step: [X]
- Condition: [When this alternative applies]
- Steps:
  1. [Alternative step]
  2. [Alternative step]
- Rejoins at step: [Y] or ends

### Exception Flows
**E1: [Error scenario name]**
- Trigger: [What causes this exception]
- Steps:
  1. System displays error message: "[Exact message]"
  2. [Recovery action]
- End state: [How it ends]

### Business Rules
| Rule ID | Rule Description |
|---------|------------------|
| BR-001 | [Rule that applies to this use case] |
| BR-002 | [Another rule] |

### Non-Functional Requirements
- **Performance**: [Specific metrics]
- **Security**: [Security requirements]
```

---

## Method 3: Success Criteria Definition

### Purpose

Success Criteria define **measurable outcomes** that determine whether a requirement has been successfully implemented. They bridge the gap between user stories and acceptance tests.

### SMART Criteria

Each success criterion MUST be **SMART**:

| Attribute | Description | Example |
|-----------|-------------|---------|
| **S**pecific | Clear and unambiguous | "Page loads in under 2 seconds" not "Page loads fast" |
| **M**easurable | Quantifiable metric | "95% of users complete checkout" |
| **A**chievable | Realistic given constraints | Consider technical limitations |
| **R**elevant | Aligned with business goals | Ties to user value |
| **T**ime-bound | Has defined timeframe | "Within first 30 days of launch" |

### Success Criteria Categories

| Category | Focus | Example Metrics |
|----------|-------|-----------------|
| **Functional** | Feature behavior | Task completion rate, error rate |
| **Performance** | Speed and efficiency | Response time, throughput |
| **Usability** | User experience | Task success rate, time-on-task |
| **Business** | Business outcomes | Conversion rate, revenue impact |
| **Quality** | System quality | Defect density, uptime |

### Success Criteria Template

```markdown
## Success Criteria: [Requirement/Feature ID]

### SC-001: [Criterion Name]

| Field | Value |
|-------|-------|
| **Requirement** | REQ-XXX / US-XXX |
| **Category** | Functional / Performance / Usability / Business / Quality |
| **Metric** | [What to measure] |
| **Target** | [Quantified goal] |
| **Baseline** | [Current state, if applicable] |
| **Measurement Method** | [How to measure] |
| **Verification Point** | [When to verify] |

**Definition of Success**:
> [Clear statement of what success looks like]

**Definition of Failure**:
> [Clear statement of what constitutes failure]
```

### Success Criteria Traceability

```mermaid
graph LR
    subgraph Requirements
        REQ[REQ-001<br/>Requirement]
        US[US-001<br/>User Story]
    end

    subgraph SuccessCriteria[Success Criteria]
        SC1[SC-001<br/>Functional]
        SC2[SC-002<br/>Performance]
        SC3[SC-003<br/>Business]
    end

    subgraph Verification
        TC[Test Cases]
        KPI[KPIs]
        MON[Monitoring]
    end

    REQ --> SC1
    REQ --> SC2
    US --> SC3
    SC1 --> TC
    SC2 --> MON
    SC3 --> KPI

    style REQ fill:#e1f5fe,stroke:#01579b
    style US fill:#e1f5fe,stroke:#01579b
    style SC1 fill:#e8f5e9,stroke:#1b5e20
    style SC2 fill:#e8f5e9,stroke:#1b5e20
    style SC3 fill:#e8f5e9,stroke:#1b5e20
```

### Example Success Criteria

| SC ID | Requirement | Category | Metric | Target |
|-------|-------------|----------|--------|--------|
| SC-001 | US-001 Login | Functional | Login success rate | ≥ 99.5% |
| SC-002 | US-001 Login | Performance | Login response time | < 1 second |
| SC-003 | US-001 Login | Security | Failed login lockout | After 5 attempts |
| SC-004 | US-002 Search | Usability | Search result relevance | ≥ 90% accuracy |
| SC-005 | REQ-010 | Business | User retention | ≥ 80% after 30 days |

---

## Method 4: Event Storming (for Complex Systems)

### Event Storming Elements

| Element | Color | Description | Example |
|---------|-------|-------------|---------|
| **Domain Event** | Orange | Something that happened | "Order Placed" |
| **Command** | Blue | Action that triggers event | "Place Order" |
| **Aggregate** | Yellow | Entity that receives command | "Order" |
| **Policy** | Purple | Reaction rule | "When order placed, notify warehouse" |
| **Read Model** | Green | Data needed for decision | "Available inventory" |
| **External System** | Pink | Third-party integration | "Payment Gateway" |
| **User/Actor** | Small yellow | Who triggers command | "Customer" |
| **Hot Spot** | Red | Unresolved question | "How to handle split shipment?" |

### Event Storming Output

```markdown
## Event Storming Results: [Domain Name]

### Timeline (Left to Right)
```
[User] → [Command] → [Aggregate] → [Domain Event] → [Policy] → [Next Command]
```

### Domain Events Identified
| Event | Aggregate | Triggered By | Triggers |
|-------|-----------|--------------|----------|
| Order Created | Order | Place Order command | Inventory Reserved |
| Payment Received | Payment | Process Payment command | Order Confirmed |
| Order Shipped | Order | Ship Order command | Customer Notified |

### Commands Identified
| Command | Actor | Aggregate | Preconditions |
|---------|-------|-----------|---------------|
| Place Order | Customer | Order | Cart not empty |
| Process Payment | System | Payment | Order created |
| Ship Order | Warehouse Staff | Order | Payment received |

### Aggregates Identified
| Aggregate | Responsibilities | Key Attributes |
|-----------|------------------|----------------|
| Order | Manage order lifecycle | items, status, total |
| Payment | Handle payment processing | amount, status, method |
| Inventory | Track stock levels | quantity, reserved |

### Hot Spots (Unresolved Questions)
1. 🔴 [Question 1 - needs clarification]
2. 🔴 [Question 2 - needs decision]
```

---

## Method 5: Dependency Analysis

### Dependency Types

| Type | Description | Example | Risk Level |
|------|-------------|---------|------------|
| **Mandatory** | Must complete A before B | Login before checkout | High |
| **Optional** | A enhances B | Search filters enhance search | Low |
| **Conflicting** | A and B cannot coexist | Two auth methods | Critical |
| **External** | Depends on outside system | Payment gateway | High |

### Dependency Matrix

```markdown
## Requirements Dependency Matrix

| Req ID | Depends On | Dependency Type | Impact if Delayed |
|--------|------------|-----------------|-------------------|
| REQ-005 | REQ-001, REQ-002 | Mandatory | Blocks entire feature |
| REQ-008 | REQ-005 | Mandatory | Blocks payment flow |
| REQ-010 | External API | External | Risk: API availability |
| REQ-012 | REQ-003 | Optional | Degraded experience |

### Dependency Graph
```
REQ-001 ──┐
          ├──► REQ-005 ──► REQ-008 ──► REQ-011
REQ-002 ──┘        │
                   └──► REQ-009
REQ-003 ──────────────► REQ-012 (optional)
```

### Critical Path
REQ-001 → REQ-005 → REQ-008 → REQ-011 (blocks release)

### Risks Identified
| Risk | Requirements | Mitigation |
|------|--------------|------------|
| Circular dependency | [List] | [Solution] |
| External dependency | [List] | [Fallback plan] |
```

---

## Exit Criteria (NON-NEGOTIABLE)

| Criteria | Standard | Verification | Status |
|----------|----------|--------------|--------|
| **Diagram Standards** | All diagrams follow UML/Mermaid standards | Check against `helper-diagram-standards.md` | [ ] |
| **Expression Priority** | Diagrams used over tables/text | Verify no text-only requirements | [ ] |
| User Story Map | Core user journeys mapped | Verify activity flow | [ ] |
| Use Case Diagrams | Main use cases documented with Sequence Diagrams | Review interactions | [ ] |
| **Success Criteria** | SMART criteria defined for key requirements | Verify measurability | [ ] |
| Domain Model | Bounded contexts identified (if applicable) | Verify aggregates | [ ] |
| Dependency Graph | Dependencies mapped | Check for circular | [ ] |
| Feasibility Assessment | Technical risks evaluated | Risk assessment complete | [ ] |

---

## Next Step

After completing this phase, proceed to:

**Phase 4: Clarification**
- Systematic questioning to eliminate ambiguity
- Requirement refinement and validation
- Release planning
