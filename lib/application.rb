require './game'
require './player'

puts "APP - JE LANCE GAME.NEW"
game = Game.new
player = Player.new

puts "APP - JE LANCE GAME.GET_NAMES"
myplayernames = player.get_names
puts "mes joueurs sont :"
puts myplayernames
current_player = myplayernames[0]
symbol = "X"
next_player = myplayernames[1]
puts "mon current player est : #{current_player}"

puts "APP - JE CREE UN BOARD"
myboard = Board.new
myboard.display_board

while myboard.victory(symbol) == false && myboard.full == false

    puts "APP - JE LANCE GAME.CASE_CHOICE"
    mychoice = game.case_choice(current_player)
    puts "Mon choix de case"
    puts mychoice

    puts "APP - JE LANCE BOARD.CHOICE_IMPACT"
    puts "my current player is : #{current_player}"
    if current_player == myplayernames[0]
        symbol = "X"
    else symbol = "0"
    end
    puts "the symbol is : #{symbol}"
    myboard.choice_impact(mychoice, symbol)
    myboard.display_board

    puts "APP - JE LANCE PLAYER.CHANGEPLAYER"
    puts "my current player was : #{current_player}"
    current_player = player.changeplayer(current_player, next_player)
    if current_player == myplayernames[0]
        next_player = myplayernames[1]
    else next_player = myplayernames[0]
    end
    puts "my new current player (for the next turn) is : #{current_player}"
    puts "my next player will be : #{next_player}"

end 

if myboard.victory(symbol) == true
    puts "BRAVO #{next_player}! Vous avez remporté la partie !!!"
    
    elsif myboard.full == true
        puts "Vous êtes tous les 2 aussi forts... ou aussi nuls !"
    else 
end

puts "C'est la fin de nos aventures. Si vous souhaitez jouer encore, relancez le programme ! Bisous bisous. Matt & Béré"

