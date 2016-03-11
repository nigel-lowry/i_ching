Feature: Casting

  Scenario: Toss coins
    When I cast
    Then I will get back six lines
      And each will have a score of between 6 and 9 inclusive