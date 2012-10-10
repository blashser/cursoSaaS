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

  puts tournament.flatten!.inspect

  while tournament.length > 2 do

    player1   = tournament.shift
    strategy1 = tournament.shift
    player2   = tournament.shift
    strategy2 = tournament.shift
    
    player1 = [ player1, strategy1 ]
    player2 = [ player2, strategy2 ]
    
    tournament += rps_game_winner( [ player1, player2 ] )

    puts tournament.inspect
  end
  tournament
end


### Test part ###

if __FILE__ == $0
  list = [ ["Armando", "P"], ["Dave", "S"] ] # Dave would win since S > P

  winner = rps_game_winner list
  
  puts winner.first + " wins!"

  tournament = [
                [
                 [ ["Armando", "P"], ["Dave", "S"] ],
                 [ ["Richard", "R"],  ["Michael", "S"] ],
                ],
                [
                 [ ["Allen", "S"], ["Omer", "P"] ],
                 [ ["David E.", "R"], ["Richard X.", "P"] ],
                ],
                [
                 [ ["Sergio", "R"], ["Patricia", "P"] ],
                 [ ["Chus", "S"], ["Chema", "P"] ],
                ],
                [
                 [ ["Vane", "S"], ["Dani", "P"] ],
                 [ ["Pedro", "P"], ["Paula", "P"] ]
                ]
               ]
  winner = rps_tournament_winner tournament

  puts winner.inspect
  puts winner.first + " wins the Tournament!"
end
