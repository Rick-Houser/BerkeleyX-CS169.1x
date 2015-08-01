class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

	def self.winner(player1, player2)
		strategies = ['r', 'p', 's']
		p1turn = player1[1].downcase
		p2turn = player2[1].downcase

		if strategies.include?(p1turn) == false
			raise NoSuchStrategyError, ("Strategy must be one of R,P,S")
		end

		if strategies.include?(p2turn) == false
			raise NoSuchStrategyError, ("Strategy must be one of R,P,S")
		end

    if p1turn!=p2turn then
      case p1turn
        when "r" then p2turn=="s" ? player1 : player2
        when "p" then p2turn=="r" ? player1 : player2
        when "s" then p2turn=="p" ? player1 : player2
      end
    else
      player1
    end
	end

	def self.tournament_winner(tournament)
		if tournament[0][1].class == String
			if tournament[0][1].length == 1
				winner(tournament[0], tournament[1])
			end
		
		else
			t1 = tournament_winner(tournament[0])
			t2 = tournament_winner(tournament[1])
			tournament_winner([t1, t2])
		end
	end
end
