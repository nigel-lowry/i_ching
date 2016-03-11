@wip
Feature: Hexagram identification

  Scenario Outline: Map lines to hexagram
    When the monograms from bottom to top are "<lines>"
    Then the hexagram is "<hexagram>"

  Examples: The 64 hexagrams (todo)
    | lines  | hexagram |
    | ⚊⚊⚊⚊⚊⚊ | ䷀       |
    | ⚋⚋⚋⚋⚋⚋ | ䷁       |

  Scenario Outline: Map hexagram to number
    When the hexagram "<hexagram>"
    Then its number is "<number>"

  Examples: The 64 hexagrams as numbers (todo)
    | hexagram | number |
    | ䷀       | 1      |
    | ䷁       | 2      |
    | ䷂       | 3      |
    | ䷃       | 4      |
    | ䷄       | 5      |
    | ䷅       | 6      |
    | ䷆       | 7      |
    | ䷇       | 8      |
