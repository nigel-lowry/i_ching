Feature: Changing

  Monograms either stay the same in the future, or they change.

  Scenario Outline: Plot
    Given the monogram is "<monogram>"
    Then the present should be "<present>"
      And the future should be "<future>"

  Examples: Stable monograms
    Stable monograms remain the same in the future.

    | monogram | present | future |
    |  - -     | - -     | - -    |
    |  ---     | ---     | ---    |

  Examples: Unstable monograms
    Unstable monograms (represented by a leading dot) change in the future. Unbroken monograms become broken and broken
    monograms become unbroken.

    | monogram | present | future |
    | .---     | ---     | - -    |
    | .- -     | - -     | ---    |