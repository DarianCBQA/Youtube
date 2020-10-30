Feature: comments exist.
  Scenario: loads youtube page and check comments.
    Given I load youtube page with comments
    When comments load
    Then I can see comments