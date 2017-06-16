Feature: Lookup

  Each hexagram has a name and a number. This conversion seems completely arbitrary and nobody knows how this was
  defined.

  Scenario Outline:
    Given the hexagram from top to bottom is <hexagram>
    Then the number is <number>

    Examples:
      A u means unbroken whilst a b means broken. These are arbitrary and no mathematical relationship exists.

      | hexagram | number |
      | uuuuuu   | 1      |
      | bbbbbb   | 2      |
      | bubbbu   | 3      |
      | ubbbub   | 4      |
      | bubuuu   | 5      |
      | uuubub   | 6      |
      | bbbbub   | 7      |
      | bubbbb   | 8      |
      | uubuuu   | 9      |
      | uuubuu   | 10     |
      | bbbuuu   | 11     |
      | uuubbb   | 12     |
      | uuuubu   | 13     |
      | ubuuuu   | 14     |
      | bbbubb   | 15     |
      | bbubbb   | 16     |
      | ububbu   | 17     |
      | ubbuub   | 18     |
      | bbbbuu   | 19     |
      | uuuuuu   | 20     |
      | ububbu   | 21     |
      | ubbubu   | 22     |
      | ubbbbb   | 23     |
      | bbbbbu   | 24     |
      | uuubbu   | 25     |
      | ubbuuu   | 26     |
      | ubbbbu   | 27     |
      | buuuuu   | 28     |
      | bubbub   | 29     |
      | ubuubu   | 30     |
      | buuubb   | 31     |
      | bbuuub   | 32     |
      | uuuubb   | 33     |
      | bbuuuu   | 34     |
      | ububbb   | 35     |
      | bbbubu   | 36     |
      | uuuuuu   | 37     |
      | ububuu   | 38     |
      | bububb   | 39     |
      | bbubub   | 40     |
      | ubbbuu   | 41     |
      | uuuuuu   | 42     |
      | buuuuu   | 43     |
      | uuuuub   | 44     |
      | buubbb   | 45     |
      | bbbuub   | 46     |
      | buubub   | 47     |
      | bubuub   | 48     |
      | buuubu   | 49     |
      | ubuuub   | 50     |
      | bbubbu   | 51     |
      | ubbubb   | 52     |
      | uuuuuu   | 53     |
      | bbubuu   | 54     |
      | bbuubu   | 55     |
      | ubuubb   | 56     |
      | uuuuuu   | 57     |
      | buubuu   | 58     |
      | uuuuuu   | 59     |
      | bubbuu   | 60     |
      | uuuuuu   | 61     |
      | bbuubb   | 62     |
      | bububu   | 63     |
      | ububuu   | 64     |


