require './game'
require './boardcase'
#require 'pry'


class Board
    attr_accessor :array_boardcases

    
    def initialize
        @A1 = " "
        @B1 = " "
        @C1 = " "
        @A2 = " "
        @B2 = " "
        @C2 = " "
        @A3 = " "
        @B3 = " "
        @C3 = " "
    end

def choice_impact(param,symbol)
    case param #en fonction du choix
    when "A1"
        if @A1 == "X" or @A1 == "0"
            puts "Vous avez sélectionné une mauvaise case ! Pour la peine, vous passez votre tour pour cette fois."
        else
        end
        @A1 = symbol
    when "B1"
        if @B1 == "X" or @B1 == "0"
            puts "Vous avez sélectionné une mauvaise case ! Pour la peine, vous passez votre tour pour cette fois."
        else
        end
        @B1 = symbol
    when "C1"
        if @C1 == "X" or @C1 == "0"
            puts "Vous avez sélectionné une mauvaise case ! Pour la peine, vous passez votre tour pour cette fois."
        else
        end
        @C1 = symbol
    when "A2"
        if @A2 == "X" or @A2 == "0"
            puts "Vous avez sélectionné une mauvaise case ! Pour la peine, vous passez votre tour pour cette fois."
        else
        end
        @A2 = symbol
    when "B2"
        if @B2 == "X" or @B2 == "0"
            puts "Vous avez sélectionné une mauvaise case ! Pour la peine, vous passez votre tour pour cette fois."
        else
        end
        @B2 = symbol
    when "C2"
        if @C2 == "X" or @C2 == "0"
            puts "Vous avez sélectionné une mauvaise case ! Pour la peine, vous passez votre tour pour cette fois."
        else
        end
        @C2 = symbol
    when "A3"
        if @A3 == "X" or @A3 == "0"
            puts "Vous avez sélectionné une mauvaise case ! Pour la peine, vous passez votre tour pour cette fois."
        else
        end
        @A3 = symbol
    when "B3"
        if @B3 == "X" or @B3 == "0"
            puts "Vous avez sélectionné une mauvaise case ! Pour la peine, vous passez votre tour pour cette fois."
        else
        end
        @B3 = symbol
    when "C3"
        if @C3 == "X" or @C3 == "0"
            puts "Vous avez sélectionné une mauvaise case ! Pour la peine, vous passez votre tour pour cette fois."
        else
        end
        @C3 = symbol
    end

end


    def display_board
        # le tableau
        puts "-"*25
        puts "|#{@A1}|#{@B1}|#{@C1}|"
        puts "-"*25
        puts "|#{@A2}|#{@B2}|#{@C2}|"
        puts "-"*25
        puts "|#{@A3}|#{@B3}|#{@C3}|"
        puts "-"*25
    end

    def update_case(i, symbol)
        #renvoie l'index de la case choisie et utilise methode update de board_case pour le symbol
        return @array_boardcases[i].update_symbol(symbol)
    end
    

    def victory(symbol)
        if [@A1, @B1, @C1] == [symbol, symbol, symbol] 
            return true
        elsif [@A1, @B1, @C1] == [symbol, symbol, symbol] 
            return true
        elsif [@A2, @B2, @C2] == [symbol, symbol, symbol] 
            return true
        elsif [@A3, @B3, @C3] == [symbol, symbol, symbol] 
            return true
        elsif [@A1, @A2, @A3] == [symbol, symbol, symbol] 
            return true
        elsif [@B1, @B2, @B3] == [symbol, symbol, symbol] 
            return true
        elsif [@C1, @C2, @C3] == [symbol, symbol, symbol] 
            return true
        elsif [@A1, @B2, @C3] == [symbol, symbol, symbol] 
            return true
        elsif [@C1, @B2, @A3] == [symbol, symbol, symbol] 
            return true
        else
            return false
        end
    end

    def full
        return false
    end 

end 