require './game'
require 'pry'

class Application
    attr_accessor :round_number
    
    def initialize
        @game = Game.new
        @round_number = 0
        @game.get_names
        @game.start_game
    end

   

    #binding.pry

end