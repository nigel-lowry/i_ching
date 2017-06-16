class Caster
  def cast
    cast_six_lines
  end

  private

    def cast_six_lines
      6.times.map { Scorer.new(cast_line).score }
    end

    def cast_line
      toss_three_coins
    end

    def toss_three_coins
      3.times.map { toss_coin }
    end

    def toss_coin
      [:heads, :tails].sample
    end
end

class Scorer
  def initialize tosses
    @tosses = tosses
  end

  def score
    sum_values
  end

  private

    def sum_values
      convert_tosses_to_values.reduce(:+)
    end

    def convert_tosses_to_values
      @tosses.map do |toss|
        case toss
          when :heads
            3
          when :tails
            2
        end
      end
    end
end

class MonogramPlotter

  @@BROKEN = '- -'
  @@UNBROKEN = '---'

  def initialize score
    @score = score
  end

  def to_s
    the_present = present

    case @score
      when 9, 6
        ".#{the_present}"
      else
        the_present
    end
  end

  def present
    case @score
      when 9, 7
        @@UNBROKEN
      else
        @@BROKEN
    end
  end

  def future
    case @score
      when 9
        @@BROKEN
      when 6
        @@UNBROKEN
      else
        present
    end
  end
end

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