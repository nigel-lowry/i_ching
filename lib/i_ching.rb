# encoding: UTF-8
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
      3.times.map {toss_coin}
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

class LinePlotter

  BROKEN = '- -'
  UNBROKEN = '---'

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
        UNBROKEN
      else
        BROKEN
    end
  end

  def future
    case @score
      when 9
        BROKEN
      when 6
        UNBROKEN
      else
        present
    end
  end
end

class Hexagram
  def initialize hexagram_symbol
    @hexagram_symbol = hexagram_symbol
  end

  def to_i
    @hexagram_symbol.ord - 19_903
  end
end

class Hexagram2
  def initialize monograms
    @monograms = monograms
  end

  def to_s
    monograms_to_hexagrams = {
      '⚊⚊⚊⚊⚊⚊' => '䷀',
      '⚋⚋⚋⚋⚋⚋' => '䷁'
    }

    monograms_to_hexagrams[@monograms]
  end
end