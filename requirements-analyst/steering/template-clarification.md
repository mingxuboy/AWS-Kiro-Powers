---
inclusion: agent
---

# Clarification Output Template

**Output File**: `.kiro/specs/[feature-name]/04-clarification.md`

---

## File Template

```markdown
# Clarification: [Feature Name]

**Created**: [Date]
**Status**: In Progress | Completed

---

## 1. Clarification Summary

| Total Questions | Answered | Pending | Blocked |
|-----------------|----------|---------|---------|
| X | X | X | X |

---

## 2. Clarification Log

### Q1: [Question about requirement]

**Requirement**: REQ-001
**Category**: Project Context | User/Stakeholder | Business Goal | Scope | Functional | Non-functional | Edge Case
**Asked**: [Date]

**Question**:
> [Single focused question]

**Why Asked**:
> [Brief explanation of why this matters for requirements]

**Answer**:
> [User's response]

**Impact on Requirement**:
- Original: [Original requirement text]
- Clarified: [Updated requirement text]

---

### Q2: [Question about requirement]

[Repeat structure]

---

## 3. Clarified Requirements

### REQ-001: [Requirement Name]

**Original**:
> [Original vague requirement]

**Clarified**:
> [Clear, specific requirement after clarification]

**Changes Made**:
- [Change 1]
- [Change 2]

**Acceptance Criteria**:

\`\`\`gherkin
Scenario: [Scenario name]
  Given [precondition]
  When [action]
  Then [expected result]
\`\`\`

---

## 4. Assumptions Documented

| ID | Assumption | Related Req | Risk if Wrong | Validated |
|----|------------|-------------|---------------|-----------|
| ASM-001 | [Assumption] | REQ-001 | [Risk] | Yes/No |

---

## 5. Constraints Identified

| ID | Constraint | Type | Impact | Source |
|----|------------|------|--------|--------|
| CON-001 | [Constraint] | Technical/Business/Legal | [Impact] | [Source] |

---

## 6. Ambiguities Resolved

| ID | Original Text | Issue | Resolution |
|----|---------------|-------|------------|
| AMB-001 | "[Vague text]" | [Why ambiguous] | [How resolved] |

---

## 7. Pending Clarifications

| ID | Question | Requirement | Owner | Due Date |
|----|----------|-------------|-------|----------|
| PND-001 | [Question] | REQ-XXX | [Name] | [Date] |

---

## 8. Out of Scope (Confirmed)

| Item | Reason | Future Consideration |
|------|--------|---------------------|
| [Item] | [Why out of scope] | v2.0 / Never |

---

## Next Steps

- [ ] Resolve pending clarifications
- [ ] Proceed to Phase 5: Validate (Requirements Validation)
```
