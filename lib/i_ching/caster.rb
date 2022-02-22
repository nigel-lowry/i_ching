module IChing
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
end
