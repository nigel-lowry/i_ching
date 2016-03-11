Feature: Casting

  In I Ching, you toss three coins, each forming what's called a line, six times. This gives you a present fortune
  (hexagram), and most likely a future hexagram too, from The Oracle. You then check what a hexagram represents in an
  I Ching book. There are 64 hexagrams.

  Scenario: Toss coins
    When I cast
    Then I will get back six lines
      And each will have a score of between 6 and 9 inclusive