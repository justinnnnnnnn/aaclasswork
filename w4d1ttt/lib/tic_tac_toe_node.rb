require_relative 'tic_tac_toe'
attr_reader :board, :next_mover_mark, :prev_move_pos

class TicTacToeNode
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
  end

  def winning_node?(evaluator)
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    current_board = @board.dup
    empty_pos = []
    @board.each_with_index do |row, i1|
      row.each_with_index do |position, i2|
        empty_pos << [i1, i2] if @board.empty?([i1, i2])
      end
    end
    empty_pos
  end
end
