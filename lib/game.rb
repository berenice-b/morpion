require './board'
require './player'
#require 'pry'

class Game

    def initialize
    end



    def add_player      # définit le joueur et son symbole
        player = Player.new
        return player
    end
    
    def turn
        @turn = Random.rand(0..1)
        if @turn == 0
            @turn += 1
            else @turn -= 1
        end
    end

    def case_choice(myplayer)
        puts "#{myplayer}, rentrez votre case"
        @imput_case = gets.chomp
        return choix = @imput_case
    end

    def turn2
        @first_board.choice_impact
        #@array_boardcases.push(@imput_case)
        @first_board.display_board
        #puts "#{@player_names[@turn]}"
    end

    def perform
        puts get_names
        puts add_player
        # puts turn
        puts launch_game
        
    end
#binding.pry
end

