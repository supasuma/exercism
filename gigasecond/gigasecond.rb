require_relative 'bookkeeping'

class Gigasecond
    include BookKeeping

    def self.from(birthday)
        birthday + 1_000_000_000
    end
end
