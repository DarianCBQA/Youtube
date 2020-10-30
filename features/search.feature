Feature: check search
  Scenario: In a Youtube video, check search
    Given I load youtube page
    When search input and button loads
    Then I check search