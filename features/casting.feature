Feature: Casting

  In the ancient form of fortune-telling I Ching, you pose a question to "The Oracle",
  then toss three coins, each forming a monogram, six times. Each monogram has a score
  of 6, 7, 8 or 9. Thus there are four different monograms.

  The six monograms form a hexagram which is composed of a present hexagram, and a
  future hexagram. The future hexagram can be identical to the present hexagram meaning
  that the current situation persists in the future.

  Finally you read the relevant passages from the "Book of Changes" (available online at
  http://the-iching.com or in bookstores). There are 64 hexagrams in a "Book of Changes".

  Scenario: Toss coins
    When I cast
    Then I will get back six monograms
      And each will have an integral score between 6 and 9 inclusive