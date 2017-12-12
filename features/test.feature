Feature: Test how spinach works
  As a developer
  In order to know what the heck is spinach
  I want it to behave in an expected way

  Scenario: Formal greeting
    Given I have an empty array
    And I append my first name and my last name to it
    When I pass it to my super-duper method
    Then the output should contain a formal greeting

  Scenario: Informal greeting
    Given I have an empty array
    And I append only my first name to it
    When I pass it to my super-duper method
    Then the output should contain a casual greeting