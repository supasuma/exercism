module BookKeeping
    VERSION = 3
end

class Squares
    attr_reader :natural_number
    def initialize(number)
        @natural_number = number
    end

    def square_of_sum
        [*1..natural_number].inject(0, :+)**2
    end

    def sum_of_squares
        [*1..natural_number].inject(0) do |squares, number|
            squares += number**2
        end
    end

    def difference
        square_of_sum - sum_of_squares
    end
end
