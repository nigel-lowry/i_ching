Feature: Hexagram identification

  Scenario Outline: Map hexagram to number
    Given the hexagram "<hexagram>"
    Then it's number is "<number>"

    Examples:
      | hexagram | number |
      | ䷀       | 1      |
      | ䷁       | 2      |
      | ䷂       | 3      |
      | ䷃       | 4      |
      | ䷄       | 5      |
      | ䷅       | 6      |
      | ䷆       | 7      |
      | ䷇       | 8      |


