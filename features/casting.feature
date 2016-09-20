Feature: Casting

  In I Ching, you toss three coins, each forming a monogram, six times. Each monogram has a score of 6, 7, 8 or 9.
  Thus there are four different monograms. The six monograms form a hexagram which is made up of a present hexagram
  (fortune), and a future hexagram, from "The Oracle". The present and future hexagrams may or may not be identical.
  You then check what the hexagrams represent in an I Ching book ("The Book of Changes"). There are 64 hexagrams.

  Scenario: Toss coins
    When I cast
    Then I will get back six monograms
      And each will have an integral score between 6 and 9 inclusive