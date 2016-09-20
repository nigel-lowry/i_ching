Feature: Plotting

  There are four possible outcomes for each monogram. Each monogram can be either broken or unbroken, and at the same
  time, stable or unstable.

  Scenario Outline: Plot
    Given the score is "<score>"
    Then the monogram should be "<monogram>"

  Examples: Unbroken monograms
    A score of 7 or 9 yields an unbroken monogram

    | score | monogram |
    | 7     |  ---     |
    | 9     | .---     |

  Examples: Broken monograms
    A score of 6 or 8 yields a broken monogram

    | score | monogram |
    | 6     | .- -     |
    | 8     |  - -     |

  Examples: Stable monograms
    A score of 7 or 8 yields a stable monogram

    | score | monogram |
    | 7     |  ---     |
    | 8     |  - -     |

  Examples: Unstable monograms
    A score of 6 or 9 yields an unstable monogram (represented by a leading dot)

    | score | monogram |
    | 6     | .- -     |
    | 9     | .---     |