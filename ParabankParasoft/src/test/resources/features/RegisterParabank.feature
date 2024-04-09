@All
Feature: Register

  @Positive @Register
  Scenario: User want to Register with valid data
    Given User in on parabank Register
    When User input register name
    And User input register Address
    And User input Phone Number
    And User input Username
    And User input Password
    And User input Confirm Password
    And User click Register Button
    Then verify success to Register

  @Negative @Register1
  Scenario: User want to fill name field with >3 character
    Given User in on parabank Register
    When User input register name >3 character
    Then verify warning messages name field

  @Negative @Register2
  Scenario: User want to fill name field with number
    Given User in on parabank Register
    When User input register name with number
    Then verify warning messages name field

  @Negative @Register3
  Scenario: User want to fill name field with special character
    Given User in on parabank Register
    When User input register name with special character
    Then verify warning messages name field

  @Negative @Register4
  Scenario: User want to fill name field with <30 character
    Given User in on parabank Register
    When User input register name with <30 character
    Then verify warning messages name field