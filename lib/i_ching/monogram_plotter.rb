module IChing
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
end
