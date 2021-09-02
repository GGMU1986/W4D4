class Array
    def remove_dups
        hash = {}
        self.each { |ele| hash[ele] = true }
        hash.keys
    end

    
end