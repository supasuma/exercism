require_relative 'bookkeeping'

class Hamming
    include BookKeeping

    def self.compute(_x, _y)
        if _x.length != _y.length
            raise ArgumentError
        else
            true_or_false = _x.split('').zip(_y.split('')).collect { |x, y| x == y }
            true_or_false.count(false)
        end
    end
end
