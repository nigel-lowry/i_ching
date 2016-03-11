Feature: Plotting

  Scenario Outline: Plot
    Given the score is "<score>"
    Then the representation should be "<representation>"

  Examples: Unbroken lines
    A score of 7 or 9 yields an unbroken line

    | score | representation |
    | 7     |  ---           |
    | 9     | .---           |

  Examples: Broken lines
    A score of 6 or 8 yields a broken line

    | score | representation |
    | 6     | .- -           |
    | 8     |  - -           |

  Examples: Stable lines
    A score of 7 or 8 yields a stable line

    | score | representation |
    | 7     |  ---           |
    | 8     |  - -           |

  Examples: Unstable lines
    A score of 6 or 9 yields an unstable line

    | score | representation |
    | 6     | .- -           |
    | 9     | .---           |