class BoardCase
    attr_accessor :symbol
    def initialize
        @symbol = "       "
    end

    def update_symbol(symbol) #méthode pour définir si la case a un symbole
		if @symbol == " " #verifie si absence de symbole
			
			@symbol = symbol #état après apparition d'un symbole
			return 1 #renvoie 1 si tout est ok
		else  
			return 0 #renvoie 0 si une erreur	
		end	
	end

end