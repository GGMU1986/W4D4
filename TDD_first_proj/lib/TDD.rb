class Array
    def remove_dups
        hash = {}
        self.each { |ele| hash[ele] = true }
        hash.keys
    end

    def two_sum
        new_arr = []

        self.each_with_index do |ele1, i1|
            self.each_with_index do |ele2, i2|
                if ele1 + ele2 == 0 && i2 > i1
                    new_arr << [i1, i2]
                end
            end
        end
        new_arr
    end

    def my_transpose
        transposed_matrix = Array.new(self.length) { Array.new(self.length) } 

        self.each_with_index do |row, i|
            row.each_with_index do |col, j|
                transposed_matrix[j][i] = self[i][j]
            end
        end
        transposed_matrix
    end
    
end