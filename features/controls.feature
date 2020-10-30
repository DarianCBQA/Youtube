Feature: check play, pause and next buttons
  Scenario: In a Youtube video, check play, pause and next buttons
    Given I load youtube page with controls
    When video loads
    Then I can check controls