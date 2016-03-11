Feature: Scoring

  Scenario Outline: Score line toss
    Given the three coin tosses are "<tosses>"
    When the line is evaluated
    Then the score should be "<score>"

  Examples: All heads
    Each head is worth 3

    | tosses | score |
    | hhh    | 9     |

  Examples: All tails
    Each tail is worth 2

    | tosses | score |
    | ttt    | 6     |

  Examples: Two heads and a tail
    Since tails are worth 2 and a head is worth 3, the score is 8

    | tosses | score |
    | thh    | 8     |
    | hth    | 8     |
    | hht    | 8     |

  Examples: Two tails and a head
    Since tails are worth 2 and a head is worth 3, the score is 7

    | tosses | score |
    | tth    | 7     |
    | htt    | 7     |
    | tht    | 7     |