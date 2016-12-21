module BookKeeping
    VERSION = 1
end

class Sieve
    attr_reader :end_range
    START = 2

    def initialize(end_range)
        @end_range = end_range
    end

    def primes
        i = 0
        array = [*START..end_range]
        while i < array.length
            array.delete_if { |y| y % array[i] == 0 && array[i] != y }
            i += 1
        end
        array
    end
end
