# Cette classe a pour but de stocker les données relatives aux players (nom et symbole)
class Player 

    def get_names
        puts "Merci d'entrer le nom du premier joueur ( symbole : x )"
        @player_1 = gets.chomp
        puts "Merci d'entrer le nom du second joueur ( symbole : o )"
        @player_2 = gets.chomp
        @player_names = [@player_1, @player_2]
        return @player_names
    end


    def changeplayer(oldguy, newguy)
        return newguy
    end
end