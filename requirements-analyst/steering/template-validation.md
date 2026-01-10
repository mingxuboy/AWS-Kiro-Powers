---
inclusion: agent
---

# Validation Output Template

**Output File**: `.kiro/specs/[feature-name]/05-validation.md`

---

## File Template

```markdown
# Validation: [Feature Name]

**Created**: [Date]
**Status**: In Progress | Completed

---

## 1. Validation Summary

| Category | Total | Passed | Failed | Pending |
|----------|-------|--------|--------|---------|
| Functional | X | X | X | X |
| Non-Functional | X | X | X | X |
| **Total** | **X** | **X** | **X** | **X** |

---

## 2. Multi-Role Validation

### Validation Matrix

| Req ID | PM | RA | SA | SE | TE | Overall |
|--------|----|----|----|----|-----|---------|
| REQ-001 | ✅ | ✅ | ⚠️ | ✅ | ✅ | ⚠️ |
| REQ-002 | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |

**Legend**: ✅ Pass | ⚠️ Issues | ❌ Fail

### Role-Specific Findings

#### Product Manager (PM)
| Req ID | Business Value | User Need | Strategic Fit | Status |
|--------|---------------|-----------|---------------|--------|
| REQ-001 | ✅ Clear | ✅ Validated | ✅ Aligned | Pass |

#### Requirements Analyst (RA)
| Req ID | Completeness | Clarity | Traceability | Status |
|--------|--------------|---------|--------------|--------|
| REQ-001 | ✅ Complete | ✅ Clear | ✅ Traced | Pass |

#### Software Architect (SA)
| Req ID | Feasibility | Architecture Impact | NFRs | Status |
|--------|-------------|--------------------|----- |--------|
| REQ-001 | ⚠️ Medium | ⚠️ Needs design | ✅ OK | Warning |

#### Software Engineer (SE)
| Req ID | Clarity | Effort | Error Handling | Status |
|--------|---------|--------|----------------|--------|
| REQ-001 | ✅ Clear | ✅ Estimable | ✅ Defined | Pass |

#### Test Engineer (TE)
| Req ID | Testability | GWT Criteria | Edge Cases | Status |
|--------|-------------|--------------|------------|--------|
| REQ-001 | ✅ Testable | ✅ Defined | ✅ Covered | Pass |

---

## 3. GWT Acceptance Criteria Review

### REQ-001: [Requirement Name]

**Status**: ✅ All scenarios defined

\`\`\`gherkin
Scenario: Happy path
  Given [precondition]
  When [action]
  Then [expected result]

Scenario: Error handling
  Given [precondition]
  When [error condition]
  Then [error handling]

Scenario: Edge case
  Given [boundary condition]
  When [action]
  Then [expected behavior]
\`\`\`

**Coverage Check**:
- [x] Happy path
- [x] Error scenarios (2+)
- [x] Edge cases
- [x] Permission scenarios

---

## 4. Traceability Matrix

| Req ID | Business Goal | User Story | Design | Test Case | Status |
|--------|---------------|------------|--------|-----------|--------|
| REQ-001 | BG-001 | US-001 | DD-001 | TC-001~005 | ✅ |
| REQ-002 | BG-001 | US-002 | DD-002 | TC-006~010 | ✅ |

**Coverage**:
- Total Requirements: X
- Fully Traced: X (X%)
- Gaps: X

---

## 5. Issues Found

| Issue ID | Req ID | Severity | Description | Owner | Status |
|----------|--------|----------|-------------|-------|--------|
| ISS-001 | REQ-001 | Critical | [Description] | [Name] | Open |
| ISS-002 | REQ-002 | Major | [Description] | [Name] | Resolved |

---

## 6. Prototype Testing Results (if applicable)

| Test | Completion Rate | Satisfaction | Issues |
|------|-----------------|--------------|--------|
| Task 1 | X% | X/5 | [Issues] |
| Task 2 | X% | X/5 | [Issues] |

---

## 7. Sign-Off

| Role | Name | Status | Date | Comments |
|------|------|--------|------|----------|
| Product Owner | [Name] | ✅ Approved | [Date] | |
| Technical Lead | [Name] | ⚠️ Conditional | [Date] | [Condition] |
| Test Lead | [Name] | ✅ Approved | [Date] | |

---

## Next Steps

- [ ] Resolve critical issues
- [ ] Proceed to Phase 6: Specify (Requirements Specification)
```
