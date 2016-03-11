Feature: Casting

  In I Ching, you toss three coins, each forming what's called a line, six times. This gives you a present hexagram
  (fortune), and a future hexagram too, from The Oracle. Sometimes the present and future hexagrams are identical, but
  sometimes not. You then check what the hexagrams represent in an I Ching book. There are 64 hexagrams.

  Scenario: Toss coins
    When I cast
    Then I will get back six lines
      And each will have a score between 6 and 9 inclusive