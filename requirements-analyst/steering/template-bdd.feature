# BDD (Behavior-Driven Development) Feature Template
# Purpose: Executable test scenarios in Gherkin format
# Output File: .kiro/specs/[feature-name]/features/*.feature

# File: features/[feature_name].feature

@[tag1] @[tag2]
Feature: [Feature Name]
  As a [role]
  I want [feature/capability]
  So that [business value/benefit]

  Background:
    Given [common precondition for all scenarios]
    And [additional common precondition]

  # ============================================
  # Happy Path Scenarios
  # ============================================

  @happy-path
  Scenario: [Successful operation description]
    Given [precondition/context]
    And [additional precondition]
    When [action/trigger]
    And [additional action]
    Then [expected outcome]
    And [additional verification]
    And [measurable result]

  # ============================================
  # Error Handling Scenarios
  # ============================================

  @error-handling
  Scenario: [Error scenario description]
    Given [precondition]
    When [action that causes error]
    Then [error handling behavior]
    And [user notification with specific message]
    And [system state after error]

  @error-handling
  Scenario: [Validation error description]
    Given [precondition]
    When [invalid action]
    Then the system should display "[Error message]"
    And [recovery action available]

  # ============================================
  # Security Scenarios
  # ============================================

  @security
  Scenario: [Security scenario description]
    Given [security context]
    When [security-related action]
    Then [security enforcement]
    And [audit logging]

  # ============================================
  # Edge Cases
  # ============================================

  @edge-case
  Scenario: [Edge case description]
    Given [unusual but valid precondition]
    When [action at boundary]
    Then [expected behavior at edge]

  # ============================================
  # Data-Driven Scenarios (Scenario Outline)
  # ============================================

  @data-driven
  Scenario Outline: [Parameterized scenario description]
    Given [precondition with "<parameter1>"]
    When [action with "<parameter2>"]
    Then [expected result "<expected_output>"]

    Examples:
      | parameter1 | parameter2 | expected_output |
      | value1a    | value2a    | result_a        |
      | value1b    | value2b    | result_b        |
      | value1c    | value2c    | result_c        |

  # ============================================
  # Performance/Load Scenarios (if applicable)
  # ============================================

  @performance @non-functional
  Scenario: [Performance requirement description]
    Given [load context]
    When [action under load]
    Then the response time should be less than [X] seconds
    And the system should handle [Y] concurrent requests

# ============================================
# Example: User Login Feature
# ============================================

# @authentication @priority-high
# Feature: User Login
#   As a registered user
#   I want to log into the system
#   So that I can access my account and features
#
#   Background:
#     Given the system is available
#     And the user database contains test users
#
#   @happy-path
#   Scenario: Successful login with valid credentials
#     Given a user exists with email "user@example.com" and password "SecurePass123"
#     And the user account is active and not locked
#     When the user navigates to the login page
#     And enters email "user@example.com"
#     And enters password "SecurePass123"
#     And clicks the "Login" button
#     Then the user should be redirected to the dashboard
#     And should see "Welcome back" message
#     And a session should be created
#
#   @error-handling
#   Scenario: Login fails with invalid password
#     Given a user exists with email "user@example.com"
#     When the user attempts to login with email "user@example.com"
#     And enters incorrect password "WrongPassword"
#     Then the system should display "Invalid email or password"
#     And the user should remain on the login page
#     And no session should be created
#
#   @security
#   Scenario: Account lockout after multiple failed attempts
#     Given a user exists with email "user@example.com"
#     And the user has failed login 4 times
#     When the user attempts to login with incorrect password
#     Then the account should be locked for 15 minutes
#     And the system should display "Account locked. Try again in 15 minutes."
#     And a security notification should be sent to the user's email
