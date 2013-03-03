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
  def initialize score
    @score = score
  end

  def to_s
    case @score
      when 9
        '.---'
      when 8
        '- -'
      when 7
        '---'
      when 6
        '.- -'
    end
  end

  def future
    case @score
      when 9
        '- -'
      when 6
        '---'
      else
        present
    end
  end

  def present
    case @score
      when 9, 7
        '---'
      when 8, 6
        '- -'
    end
  end
end