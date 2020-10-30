@load
Feature: loads youtube.
  @load1
  Scenario: loads youtube page.
    Given I load youtube page
    When page fully loads
    Then I can see elements