---
inclusion: agent
---

# PRD (Product Requirements Document) Template

**Purpose**: Complete product requirements document for stakeholder review and development handoff.

**Output File**: `.kiro/specs/[feature-name]/prd.md` or standalone PRD document

---

## File Template

```markdown
# Product Requirements Document (PRD)

## Document Information
| Field | Value |
|-------|-------|
| **Product Name** | [Name] |
| **Version** | v1.0.0 |
| **Creation Date** | [Date] |
| **Last Updated** | [Date] |
| **Owner** | [Name] |
| **Status** | Draft / In Review / Approved |

---

## 1. Executive Summary
[2-3 paragraphs summarizing the product, its purpose, and key features]

---

## 2. Product Overview

### 2.1 Product Vision
[What is the long-term vision for this product?]

### 2.2 Product Objectives
| Objective | Success Metric | Target |
|-----------|----------------|--------|
| [Objective 1] | [Metric] | [Target Value] |
| [Objective 2] | [Metric] | [Target Value] |

### 2.3 Target Users
| Persona | Description | Key Needs |
|---------|-------------|-----------|
| [Persona 1] | [Description] | [Needs] |
| [Persona 2] | [Description] | [Needs] |

### 2.4 Scope
#### In Scope
- [Feature/Capability 1]
- [Feature/Capability 2]

#### Out of Scope
- [Excluded item 1]
- [Excluded item 2]

---

## 3. Functional Requirements

### 3.1 Feature: [Feature Name]

#### 3.1.1 Overview
[Description of the feature]

#### 3.1.2 User Stories
| Story ID | User Story | Priority |
|----------|------------|----------|
| US-001 | As a [role], I want [feature] so that [benefit] | P0 |

#### 3.1.3 Acceptance Criteria
**US-001**:
\`\`\`gherkin
Given [precondition]
When [action]
Then [expected result]
\`\`\`

#### 3.1.4 Business Rules
| Rule ID | Rule Description |
|---------|------------------|
| BR-001 | [Rule] |

#### 3.1.5 Data Requirements
| Field | Type | Required | Validation | Description |
|-------|------|----------|------------|-------------|
| [field] | [type] | Y/N | [rules] | [description] |

---

## 4. Non-Functional Requirements

### 4.1 Performance Requirements
| Requirement | Metric | Target |
|-------------|--------|--------|
| Response Time | Page load | < 2 seconds |
| Throughput | Concurrent users | 1,000 |
| Capacity | Data records | 1 million |

### 4.2 Security Requirements
- [ ] Authentication: [Method]
- [ ] Authorization: [Method]
- [ ] Data encryption: [Standard]
- [ ] Compliance: [Standards]

### 4.3 Reliability Requirements
| Requirement | Target |
|-------------|--------|
| Availability | 99.9% |
| Recovery Time | < 1 hour |
| Data Backup | Daily |

### 4.4 Usability Requirements
- [ ] Accessibility: [Standard, e.g., WCAG 2.1 AA]
- [ ] Browser Support: [List]
- [ ] Mobile Support: [Y/N, devices]
- [ ] Internationalization: [Languages]

---

## 5. User Experience

### 5.1 User Flows
[Include flow diagrams or descriptions]

### 5.2 Wireframes/Mockups
[Link to design files or embed images]

### 5.3 Navigation Structure
[Site map or navigation hierarchy]

---

## 6. Technical Specifications

### 6.1 System Architecture
[High-level architecture diagram or description]

### 6.2 Integration Requirements
| System | Integration Type | Purpose |
|--------|-----------------|---------|
| [System] | API / Webhook / File | [Purpose] |

### 6.3 Data Model
[Entity relationship diagram or key data structures]

---

## 7. Release Plan

### 7.1 MVP (v1.0)
**Target Date**: [Date]
**Features**:
- [Feature 1]
- [Feature 2]

### 7.2 Version 1.1
**Target Date**: [Date]
**Features**:
- [Feature 3]
- [Feature 4]

### 7.3 Roadmap
[Timeline visualization]

---

## 8. Dependencies and Risks

### 8.1 Dependencies
| Dependency | Type | Owner | Status |
|------------|------|-------|--------|
| [Dependency] | Internal/External | [Team] | [Status] |

### 8.2 Risks
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| [Risk] | H/M/L | H/M/L | [Strategy] |

---

## 9. Appendices

### 9.1 Glossary
| Term | Definition |
|------|------------|
| [Term] | [Definition] |

### 9.2 References
- [Reference 1]
- [Reference 2]

### 9.3 Version History
| Version | Date | Author | Changes |
|---------|------|--------|---------|
| 1.0.0 | [Date] | [Name] | Initial release |

---

## Approvals

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Product Owner | | | |
| Technical Lead | | | |
| Business Stakeholder | | | |
```
