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

describe "stock_picker" do
    subject(:stock_george) { [100, 50, 1000, 2] }
    subject(:stock_neil) { [3, 9, 15, 25, 100, 1000, 1005, 50, 2] }

    it "returns an array of indices a pair of days to buy and sell a stock for maximum profit" do
        expect(stock_picker(stock_george)).to eq([1,2]) 
        expect(stock_picker(stock_neil)).to eq([0,6])
    end
end

describe "TowersOfHanoi" do 
    subject(:board) { TowersOfHanoi.new }
    let(:board) { double("Board", grid, rows_sorted?: true) } #=> [[4,3,2,1], [], []]
    describe "#move" do 
        subject(:pair_1) { [0, 1] }
        subject(:pair_2) { [1, 2] }
        subject(:pair_3) { [2, 0] }
        subject(:pair_4) { [3, 9] }
        let(:grid) { [[4,3,2,1], [], []] }

        context "with valid moves" do

            it "moves discs from one pile to another" do
                board.move(pair_1)
                expect(board.grid).to eq([[4,3,2],[1],[]])
            end

            it "should not raise an error" do 
                expect {board.move(pair_1)}.not_to raise_error
            end 

        end

        context "with invalid moves" do
            
            it "raises an error when provided an invalid pos" do
                expect {board.move(pair_3)}.to raise_error("This is not a valid move!")
            end

            it "checks that player is not moving a bigger block onto a smaller block" do 
                allow(board).to recieve(rows_sorted?).and_return(false)
                expect{ board.move(pair_1) }.to raise_error("You cannot move on top of a smaller piece!")
            end

        end

    end

    describe "#won" do 
        it "checks if all blocks are in last column"
            expect(board.grid).to eq([[],[],[4,3,2,1]])
        end
    end
end