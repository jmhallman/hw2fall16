class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  # YOUR CODE HERE
  check1 = "fail"
  check2 = "fail"
  game[0][1] = game[0][1].upcase
  game[1][1] = game[1][1].upcase
  
  if game[0][1] == "R" || game[0][1] == "P" || game[0][1] == "S"
    check1 = "pass"
  end
  
  if game[1][1] == "R" || game[1][1] == "P" || game[1][1] == "S"
    check2 = "pass"
  end
  
  raise NoSuchStrategyError unless check1 == "pass" and check2 == "pass"
=begin  
  if game[0][1] = "R"
    game[0][1] = "Rock"
  elsif game[0][1] = "P"
    game[0][1] = "Paper"
  elsif game[0][1] = "S"
    game[0][1] = "Scissors"
    
  if game[1][1] = "R"
    game[1][1] = "Rock"
  elsif game[1][1] = "P"
    game[1][1] = "Paper"
  elsif game[1][1] = "S"
    game[1][1] = "Scissors"
=end

  
  if game[0][1] == "R" and game[1][1] == "P"
    game[1][1] = "Paper"
    return game[1]
  end
  if game[0][1] == "R" and game[1][1] == "S"
    game[0][1] = "Rock"
    return game[0]
  end
  if game[0][1] == "R" and game[1][1] == "R"
    game[0][1] = "Rock"
    return game[0]
  end
  if game[0][1] == "P" and game[1][1] == "R"
    game[0][1] = "Paper"
    return game[0]
  end
  if game[0][1] == "P" and game[1][1] == "S"
    game[1][1] = "Scissors"
    return game[1]
  end
  if game[0][1] == "P" and game[1][1] == "P"
    game[0][1] = "Paper"
    return game[0]
  end
  if game[0][1] == "S" and game[1][1] == "R"
    game[1][1] = "Rock"
    return game[1]
  end
  if game[0][1] == "S" and game[1][1] == "P"
    game[0][1] = "Scissors"
    return game[0]
  end
  if game[0][1] == "S" and game[1][1] == "S"
    game[0][1] = "Scissors"
    return game[0]
  end
  
  
  
  
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end

#feel free to add your own helper functions as needed

tester = [["Joe", "p"], ["John", "S"]]

game = rps_game_winner tester
puts game
=begin
tester = ["Joe", "p"]

game = rps_game_winner(tester)
puts game

tester = ["Joe", "n"]

game = rps_game_winner(tester)
puts game
=end