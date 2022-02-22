module IChing
  class Hexagram
    attr_reader :number

    @@STRING_TO_NUMBER = {
      uuuuuu: 1,  buuuuu: 43, ubuuuu: 14, bbuuuu: 34, uubuuu: 9,  bubuuu: 5,  ubbuuu: 26, bbbuuu: 11,
      uuubuu: 10, buubuu: 58, ububuu: 38, bbubuu: 54, uubbuu: 61, bubbuu: 60, ubbbuu: 41, bbbbuu: 19,
      uuuubu: 13, buuubu: 49, ubuubu: 30, bbuubu: 55, uububu: 37, bububu: 63, ubbubu: 22, bbbubu: 36,
      uuubbu: 25, buubbu: 17, ububbu: 21, bbubbu: 51, uubbbu: 42, bubbbu: 3,  ubbbbu: 27, bbbbbu: 24,
      uuuuub: 44, buuuub: 28, ubuuub: 50, bbuuub: 32, uubuub: 57, bubuub: 48, ubbuub: 18, bbbuub: 46,
      uuubub: 6,  buubub: 47, ububub: 64, bbubub: 40, uubbub: 59, bubbub: 29, ubbbub: 4,  bbbbub: 7,
      uuuubb: 33, buuubb: 31, ubuubb: 56, bbuubb: 62, uububb: 53, bububb: 39, ubbubb: 52, bbbubb: 15,
      uuubbb: 12, buubbb: 45, ububbb: 35, bbubbb: 16, uubbbb: 20, bubbbb: 8,  ubbbbb: 23, bbbbbb: 2
    }

    def initialize string
      raise string unless string =~ /^(u|b){6}$/

      @number = @@STRING_TO_NUMBER[string.to_sym]
    end
  end
end

