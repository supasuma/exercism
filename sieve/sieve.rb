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
        array = [*START..end_range]
        array.each do |num|
            array.delete_if { |x| x % num == 0 && num != x }
        end
    end
end
