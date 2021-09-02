require "TDD"

describe Array do
    describe "#remove_dups" do 
        subject(:array) { [1,1,2,2,3] }
        
        it "does not mutate the original array" do
            
        end

        it "removes the duplicates form the array" do
            expect([1,1,2,2,3].remove_dups).to eq([1,2,3])
        end
    end
end