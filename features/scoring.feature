Feature: Scoring

  Scenario Outline: Score line toss
    Given the coin tosses are "<tosses>"
    When the scorer is run
    Then the score should be "<score>"

  Examples:
    | tosses | score |
    | hhh    | 9     |
    | thh    | 8     |
    | hth    | 8     |
    | hht    | 8     |
    | tth    | 7     |
    | htt    | 7     |
    | tht    | 7     |
    | ttt    | 6     |