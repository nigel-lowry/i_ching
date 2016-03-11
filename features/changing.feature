Feature: Changing

  Lines either stay the same in the future, or they change.

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
    Unstable lines change in the future. Unbroken lines become broken and broken lines become unbroken.

    | representation | present | future |
    | .---           | ---     | - -    |
    | .- -           | - -     | ---    |