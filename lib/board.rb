require './boardcase'
#require 'pry'


class Board
    attr_accessor :array_boardcases

    def initialize
        @array_boardcases = Array.new(9){BoardCase.new}
    end

    def display_board
        # le tableau
        puts "-"*25
        puts "|#{@array_boardcases[0].symbol}|#{@array_boardcases[1].symbol}|#{@array_boardcases[2].symbol}|"
        puts "-"*25
        puts "|#{@array_boardcases[3].symbol}|#{@array_boardcases[4].symbol}|#{@array_boardcases[5].symbol}|"
        puts "-"*25
        puts "|#{@array_boardcases[6].symbol}|#{@array_boardcases[7].symbol}|#{@array_boardcases[8].symbol}|"
        puts "-"*25
    end

    def update_case(i, symbol)
        #renvoie l'index de la case choisie et utilise methode update de board_case pour le symbol
        return @array_boardcases[i].update_symbol(symbol)
    end
    
    def play_turn
        puts "Sur quelle case veux-tu aller ?"
        @case_choice = gets.chomp
    end

    def victory
    end



end