require './board'
require './player'
require 'pry'

class Game
    attr_accessor :turn

    def get_names
        puts "Merci d'entrer le nom du premier joueur ( symbole : x )"
        @player_1 = gets.chomp
        puts "Merci d'entrer le nom du second joueur ( symbole : o )"
        @player_2 = gets.chomp
        @player_names = [@player_1, @player_2]
        return @player_names
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

    def launch_game
        @first_board = Board.new
        @first_board.display_board
        array_boardcases = gets.chomp.to_i 
        puts "#{@player_names[@turn]}"
    end

    def perform
        puts get_names
        puts add_player
        puts turn
        puts launch_game
        
    end
#binding.pry
end

Game.new.perform


