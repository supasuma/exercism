module BookKeeping
    VERSION = 3
end

class Squares
    attr_reader :square_range

    def initialize(n)
        @square_range = (1..n)
    end

    def square_of_sum
        square_range.inject(0, :+)**2
    end

    def sum_of_squares
        square_range.inject(0) do |squares, number|
            squares += number**2
        end
    end

    def difference
        square_of_sum - sum_of_squares
    end
end
