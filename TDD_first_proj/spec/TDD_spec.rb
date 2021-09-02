require "TDD"

describe Array do
    describe "#remove_dups" do 
        subject(:array) { [1,2,1,3,3] }
        
        it "does not mutate the original array" do
            array_copy = array
            array.remove_dups
            expect(array).to be(array_copy)
        end

        it "removes the duplicates form the array" do
            expect([1,2,1,3,3].remove_dups).to eq([1,2,3])
        end

    end

    describe "#two_sum" do
        subject(:array) { [-1,0,2,-2,1] } 
        
        it "returns indices of elements that sum to zero" do
            expect(array.two_sum).to eq([[0,4],[2,3]])
        end
    end

    describe "#my_transpose" do 
        subject(:matrix) { rows = [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ] }
                                    
        it "return array where rows and columns are switched" do 
            expect(matrix.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end

        it "does not mutate the original array" do 
            matrix_copy = matrix
            matrix.my_transpose
            expect(matrix).to be(matrix_copy)
        end
    end
end