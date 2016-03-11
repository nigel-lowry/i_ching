Feature: Plotting

  There are four possible outcomes for each line. Each line can be either broken or unbroken, and at the same time,
  stable or unstable.

  Scenario Outline: Plot
    When the score is "<score>"
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
    A score of 6 or 9 yields an unstable line (represented as a leading dot)

    | score | representation |
    | 6     | .- -           |
    | 9     | .---           |