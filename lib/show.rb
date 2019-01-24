require './board'
require './boardcase'
require 'pry'

class Show

    def show_board
        @board = Board.new # créer automatiquement une instance Board.new
        @board.display_board
    end
    binding.pry
    
end