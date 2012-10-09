class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  fight = m1[ 1 ].downcase + m2[ 1 ].downcase
  if fight.match /(ps|rp|sr)/
    m1[0]
  else
    m2[0]
  end
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each do |player,strategy|
    raise NoSuchStrategyError unless strategy.downcase.match /^[rps]$/
  end
  
  rps_result ( game[ 0 ], game[ 1 ] )
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end


### Test part ###

if __FILE__ == $0
  list = [ ["Armando", "R"], ["Dave", "R"] ] # Dave would win since S > P

  winner = rps_game_winner list
  
  puts winner + " wins!"

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
  rps_tournament_winner tournament
end
