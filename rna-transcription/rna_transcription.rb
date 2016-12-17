module BookKeeping
    VERSION = 4
end

class Complement
    def self.of_dna(_dna)
        dna_array = %w(A T C G)
        rna = []
        dna = _dna.split('')
        difference = dna - dna_array
        if difference.empty?
            dna.each do |x|
                rna << if x == 'G'
                           'C'
                       elsif x == 'C'
                           'G'
                       elsif x == 'T'
                           'A'
                       else
                           'U'
                       end
            end
        else
            ''
        end
        rna.join
    end
end
