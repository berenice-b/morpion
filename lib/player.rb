
class Player 
    attr_reader :name :symbol

    def initialize
        @player_symbol = player_symbol
        @player_name = player_name
    end

    def choose_symbol
        params = @show.choose_symbol
        gossip = Board.new(params[:name], params[:symbol]) 
        gossip.save
    end
end