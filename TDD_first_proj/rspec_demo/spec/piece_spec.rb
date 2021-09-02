require "piece"

describe Piece do
    let(:board) { double("Board", valid_pos?: true) }
    subject(:piece) { Piece.new(:white, [0, 0], board) }

    describe "#initialize" do
        context "with valid arguments" do 
            it "instantiates a piece correctly" do
                # piece = Piece.new(:white, [0, 0], board)
                expect(piece.color).to be(:white)
                expect(piece.pos).to eq([0, 0])
            end
        end

        context "with invalid arguments" do 
            it "raises an error when provided an invalid color" do 
                expect{ Piece.new(:blue, [0, 0], board) }.to raise_error("Invalid color")
            end

            it "raises an error when provided an invalid pos" do
                allow(board).to receive(:valid_pos?).and_return(false)
                expect{ Piece.new(:white, [9, 9], board)}.to raise_error("Invalid pos")
            end
        end
    end

    describe "#pos=" do
        before(:each) { piece.pos = [1, 1] } # runs before each it block
        it "correctly reassigns a pos" do 
            # piece = Piece.new(:white, [0, 0], board)
            # piece.pos = [1, 1]
            expect(piece.pos).to eq([1, 1])
        end
    end

    describe "#symbol" do
        it "raises an error" do
            # piece = Piece.new(:white, [0, 0], board)
            expect{ piece.symbol }.to raise_error(NotImplementedError)
        end
    end

    describe "#to_s" do
        it "returns a formatted string" do 
            # piece = Piece.new(:white, [0, 0], board)
            allow(piece).to receive(:symbol).and_return('♜')
            expect(piece.symbol).to eq('♜')
            expect(piece.to_s).to eq(' ♜ ')
        end
    end

    describe "#empty?" do 
        it "returns false" do 
            # piece = Piece.new(:white, [0, 0], board)
            expect(piece.empty?).to be false
        end
    end
end 