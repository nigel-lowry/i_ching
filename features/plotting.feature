Feature: Plotting

  There are four possible outcomes for each monogram. A monogram can be either
  stable or unstable, and at the same time, broken or unbroken.

  Scenario Outline: Plot
    When the score is "<score>"
    Then the monogram should be "<monogram>"

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
