require_relative 'tic_tac_toe'


class TicTacToeNode

  attr_reader :board, :next_mover_mark, :prev_move_pos, :winning_children, :losing_children, :nil_kids

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
    @next_player = nil
      if @next_mover_mark == :x
        @next_player = :o 
      else
        @next_player = :x
      end
      @winning_children = []
      @losing_children = []
      @nil_kids = []
  end

  def losing_node?(evaluator)
    return true if evaluator.board.over? && evaluator.board.winner == @next_player
    # check are all posible next moves losses for us
    # can the oppent corner us
    # if neither of the above put in stack of possible moves
  end

  def winning_node?(evaluator)
    #check first
    #put in the node
    return true if evaluator.board.over? && evaluator.board.winner == @next_mover_mark
    # evaluator.children
    
  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    empty_pos = []
    
    @board.rows.each_with_index do |row, i1|
      row.each_with_index do |position, i2|
        empty_pos << [i1, i2] if @board.empty?([i1, i2])
      end
    end

    empty_pos.each do |e_pos|
      current_board = @board.dup
      current_board.[]=(e_pos, next_mover_mark)
      possible_move = TicTacToeNode.new(current_board, @next_player, e_pos)
      
      if winning_node?(possible_move) == true
        winning_children << possible_move
      elsif losing_node?(possible_move) == true
        losing_children << possible_move
      else
        nil_kids << possible_move
      end

    end
  end






end


t = TicTacToeNode.new(Board.new(Board.blank_grid), :x)
t.children
