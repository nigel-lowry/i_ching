Feature: Scoring

  Scenario Outline: Score line toss
    Given the three coin tosses are "<tosses>"
    When the line is evaluated
    Then the score should be "<score>"

  Examples: All heads
    Each head is worth 3, so the score is 3 * 3 = 9

    | tosses | score |
    | hhh    | 9     |

  Examples: All tails
    Each tail is worth 2, so the score is 3 * 2 = 6

    | tosses | score |
    | ttt    | 6     |

  Examples: Two heads and a tail
    The score is (2 * 3) + 2 = 8

    | tosses | score |
    | thh    | 8     |
    | hth    | 8     |
    | hht    | 8     |

  Examples: Two tails and a head
    The score is (2 * 2) + 3 = 7

    | tosses | score |
    | tth    | 7     |
    | htt    | 7     |
    | tht    | 7     |