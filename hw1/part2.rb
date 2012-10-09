class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  # YOUR CODE HERE
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end


### Test part ###

if __FILE__ == $0
  list = [ ["Armando", "R"], ["Dave", "R"] ] # Dave would win since S > P

  winer = rps_game_winner list
  
  puts winer + " wins!"

  tournament = [
                [
                 [ ["Armando", "P"], ["Dave", "S"] ],
                 [ ["Richard", "R"],  ["Michael", "S"] ],
                ],
                [
                 [ ["Allen", "S"], ["Omer", "P"] ],
                 [ ["David E.", "R"], ["Richard X.", "P"] ]
                ]
               ]
  rps_tournament_winner tournament
end
