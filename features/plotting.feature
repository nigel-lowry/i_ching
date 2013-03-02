Feature: Plotting

  Scenario Outline: Plot
    Given the score is "<score>"
    Then the representation should be "<representation>"

  Examples:
    | score | representation |
    | 9     | .---           |
    | 8     |  - -           |
    | 7     |  ---           |
    | 6     | .- -           |



