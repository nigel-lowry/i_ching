Feature: Scoring

  Scenario Outline: Score line toss
    Given the coin tosses are "<tosses>"
    When the scorer is run
    Then the score should be "<score>"

  Examples: All heads
    Each head is worth 3

    | tosses | score |
    | hhh    | 9     |

  Examples: All tails
    Each tail is worth 2

    | tosses | score |
    | ttt    | 6     |

  Examples: Mixture of heads and tails
    For a mixture of heads and tails, heads are still worth 3, whilst tails are still worth 2

    | tosses | score |
    | thh    | 8     |
    | hth    | 8     |
    | hht    | 8     |
    | tth    | 7     |
    | htt    | 7     |
    | tht    | 7     |