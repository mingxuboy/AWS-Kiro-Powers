---
inclusion: agent
---

# Specification Output Template

**Output File**: `.kiro/specs/[feature-name]/06-specification.md`

---

## File Template

```markdown
# Specification: [Feature Name]

**Version**: 1.0.0
**Created**: [Date]
**Last Updated**: [Date]
**Status**: Draft | In Review | Approved

---

## Document Control

| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0.0 | [Date] | [Name] | Initial version |

---

## 1. Executive Summary

[2-3 paragraphs summarizing the feature, its purpose, and key capabilities]

---

## 2. Scope

### In Scope
- [Feature/Capability 1]
- [Feature/Capability 2]

### Out of Scope
- [Excluded item 1]
- [Excluded item 2]

---

## 3. Functional Requirements

### FR-001: [Requirement Name]

| Attribute | Value |
|-----------|-------|
| **ID** | FR-001 |
| **Priority** | MUST / SHOULD / COULD |
| **Source** | [Stakeholder/Document] |

**Description**:
> [Clear, unambiguous requirement description]

**Acceptance Criteria**:

\`\`\`gherkin
Scenario: [Scenario name]
  Given [precondition]
  When [action]
  Then [expected result]
\`\`\`

**Business Rules**:
- BR-001: [Rule description]

---

## 4. Non-Functional Requirements

### Performance

| Requirement | Metric | Target |
|-------------|--------|--------|
| Response Time | Page load | < 2 seconds |
| Throughput | Concurrent users | 1,000 |
| Capacity | Data records | 1 million |

### Security

- [ ] Authentication: [Method]
- [ ] Authorization: [Method]
- [ ] Data encryption: [Standard]
- [ ] Compliance: [Standards]

### Reliability

| Requirement | Target |
|-------------|--------|
| Availability | 99.9% |
| Recovery Time | < 1 hour |
| Data Backup | Daily |

### Usability

- [ ] Accessibility: [Standard]
- [ ] Browser Support: [List]
- [ ] Mobile Support: [Y/N]

---

## 5. Data Requirements

### Data Model

\`\`\`mermaid
erDiagram
    Entity1 ||--o{ Entity2 : has
    Entity1 {
        string id PK
        string name
        datetime created_at
    }
    Entity2 {
        string id PK
        string entity1_id FK
        string value
    }
\`\`\`

### Data Dictionary

| Field | Type | Required | Validation | Description |
|-------|------|----------|------------|-------------|
| [field] | [type] | Y/N | [rules] | [description] |

---

## 6. API Specification (if applicable)

### Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | /api/v1/resource | List resources |
| POST | /api/v1/resource | Create resource |

### Request/Response Examples

**GET /api/v1/resource**

Response:
\`\`\`json
{
  "data": [],
  "pagination": {
    "page": 1,
    "limit": 20,
    "total": 100
  }
}
\`\`\`

---

## 7. User Interface (if applicable)

### Screen Flow

\`\`\`mermaid
graph LR
    A[Landing Page] --> B[Login]
    B --> C[Dashboard]
    C --> D[Feature Page]
    D --> E[Confirmation]
\`\`\`

### Wireframes

[Link to wireframes or embed images]

---

## 8. BDD Scenarios

### Feature: [Feature Name]

\`\`\`gherkin
@tag
Feature: [Feature Name]
  As a [role]
  I want [feature]
  So that [benefit]

  Background:
    Given [common precondition]

  @happy-path
  Scenario: Successful operation
    Given [precondition]
    When [action]
    Then [expected result]

  @error-handling
  Scenario: Error case
    Given [precondition]
    When [error condition]
    Then [error handling]

  @edge-case
  Scenario Outline: Boundary testing
    Given [precondition]
    When [action with "<input>"]
    Then [expected "<output>"]

    Examples:
      | input | output |
      | value1 | result1 |
      | value2 | result2 |
\`\`\`

---

## 9. Dependencies

\`\`\`mermaid
graph TD
    FR001[FR-001] --> FR002[FR-002]
    FR001 --> FR003[FR-003]
    FR002 --> FR004[FR-004]
    EXT[External API] --> FR003
\`\`\`

| Dependency | Type | Owner | Status |
|------------|------|-------|--------|
| [Dependency] | Internal/External | [Team] | [Status] |

---

## 10. Risks and Mitigations

| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| [Risk] | H/M/L | H/M/L | [Strategy] |

---

## 11. Glossary

| Term | Definition |
|------|------------|
| [Term] | [Definition] |

---

## Approvals

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Product Owner | | | |
| Technical Lead | | | |
| QA Lead | | | |
```
