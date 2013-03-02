class Caster
  def cast
    cast_line
  end

  private

    def cast_line
      toss_three_coins
    end

    def toss_three_coins
      [toss_coin, toss_coin, toss_coin]
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