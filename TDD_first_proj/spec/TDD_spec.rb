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
end