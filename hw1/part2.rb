class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  fight = m1[ 1 ].downcase + m2[ 1 ].downcase
  if fight.match /(ps|rp|sr)/
    m2
  else
    m1
  end
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each do |player,strategy|
    raise NoSuchStrategyError unless strategy.downcase.match /^[rps]$/
  end
  
  rps_result game[ 0 ], game[ 1 ]
end

def rps_tournament_winner( tournament )

  tournament.flatten!

  while tournament.length > 2 do

    player1   = tournament.shift
    strategy1 = tournament.shift
    player2   = tournament.shift
    strategy2 = tournament.shift
    
    player1 = [ player1, strategy1 ]
    player2 = [ player2, strategy2 ]
    
    tournament += rps_game_winner( [ player1, player2 ] )
  end
  tournament
end

