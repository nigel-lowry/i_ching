Feature: Changing

  Scenario Outline: Plot
    When the representation is "<representation>"
    Then the present should be "<present>"
      And the future should be "<future>"

  Examples: Stable lines
    Stable lines remain the same in the future

    | representation | present | future |
    |  - -           | - -     | - -    |
    |  ---           | ---     | ---    |

  Examples: Unstable lines
    Unstable lines change in the future. Broken lines become unbroken and unbroken lines become broken.

    | representation | present | future |
    | .---           | ---     | - -    |
    | .- -           | - -     | ---    |