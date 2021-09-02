class Piece 
    attr_reader :color 
    attr_accessor :pos

    def initialize(color, pos, board)
        raise "Invalid color" unless color == :white
        raise "Invalid pos" unless board.valid_pos?(pos)
        @color = color
        @pos = pos
        @board = board
    end

    def symbol
        raise NotImplementedError
    end

    def to_s
        " #{symbol} "
    end

    def empty?
        false
    end
end