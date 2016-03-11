Feature: Casting

  In I Ching, you toss three coins, each forming what's called a line, six times. Each line has a score of 6, 7, 8 or 9.
  These represent the four different line types. This gives you a present hexagram (fortune), and a future hexagram
  too, from "The Oracle". The present and future hexagrams may or may not be identical. You then check what the
  hexagrams represent in an I Ching book ("The Book of Changes"). There are 64 hexagrams.

  Scenario: Toss coins
    When I cast
    Then I will get back six lines
      And each will have a score between 6 and 9 inclusive