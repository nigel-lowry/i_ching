module IChing
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
end
