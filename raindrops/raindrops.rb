module BookKeeping
    VERSION = 3
end

class Raindrops
    def self.convert(_number)
        if _number % 3 == 0 && _number % 5 == 0 && _number % 7 == 0
            'PlingPlangPlong'
        elsif _number % 3 == 0 && _number % 5 == 0
            'PlingPlang'
        elsif _number % 3 == 0 && _number % 7 == 0
            'PlingPlong'
        elsif _number % 5 == 0 && _number % 7 == 0
            'PlangPlong'
        elsif _number % 3 == 0
            'Pling'

        elsif _number % 5 == 0
            'Plang'
        elsif _number % 7 == 0
            'Plong'
        else
            _number.to_s
        end
    end
end
