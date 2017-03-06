@skip_welcome_page
Feature: Real Time Board

  Scenario: Add by stop number
    When I navigate to real time boards page
    And I touch create a board button
    And I create the real time board:
      | Stop  | Name |
      | 7006  | Red  |
    Then the real time board routes are displayed