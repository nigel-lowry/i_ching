Feature: Changing

  Scenario Outline: Plot
    When the representation is "<representation>"
    Then the present should be "<present>"
      And the future should be "<future>"

  Examples:
    | representation | present | future |
    | .---           | ---     | - -    |
    |  - -           | - -     | - -    |
    |  ---           | ---     | ---    |
    | .- -           | - -     | ---    |