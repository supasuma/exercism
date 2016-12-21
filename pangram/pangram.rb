module BookKeeping
    VERSION = 3
end

class Pangram
    def self.pangram?(phrase)
        modified_phrase = [*'a'..'z'] - phrase.downcase.split('')
        modified_phrase.empty?
    end
end
