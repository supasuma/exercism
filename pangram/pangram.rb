module BookKeeping
    VERSION = 3
end

class Pangram
    def self.pangram?(phrase)
        array = [*'a'..'z'] - phrase.gsub(/\s+/, '').downcase.split('')
        array.empty? ? true : false
    end
end
