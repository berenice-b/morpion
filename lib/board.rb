require './boardcase'
require 'pry'


class Board
    attr_accessor :array_boardcases

    def initialize(array_boardcases)
        @array_boardcases = Array.new(9){BoardCase.new}
    end

    def display_board
        puts "#{@array_boardcases[0].symbol}|#{@array_boardcases[1].symbol}|#{@array_boardcases[2].symbol}"
        puts "#{@array_boardcases[3].symbol}|#{@array_boardcases[4].symbol}|#{@array_boardcases[5].symbol}"
        puts "#{@array_boardcases[6].symbol}|#{@array_boardcases[7].symbol}|#{@array_boardcases[8].symbol}"
    end
    binding.pry
    
    def play_turn
        puts "Sur quelle case veux-tu aller ?"
        @case_choice = gets.chomp
    end

    def victory
    end



end