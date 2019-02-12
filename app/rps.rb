def game_rules
  {
    'Rock': "Scissors",
    'Paper': "Rock",
    'Scissors': "Paper"
  }
end

def rsp_match(current_user)
  prompt = TTY::Prompt.new
  # opponent_guesses = ["Rock", "Paper", "Scissors"]
  # opp_guess = opponent_guesses.sample

  opponent_score = 0
  user_score = 0

  until opponent_score == 3 || user_score == 3

    user_guess = prompt.select('Select your weapon', ["Rock", "Paper", "Scissors"])
    opponent_guess = ["Rock", "Paper", "Scissors"].sample

    if game_rules[opponent_guess.to_sym] == user_guess
      opponent_score += 1
      puts "opponent wins"
    elsif game_rules[user_guess.to_sym] == opponent_guess
      user_score += 1
      puts "#{current_user.name} wins"
    else
      puts "tie game"
    end

    puts "#{current_user.name} chose #{user_guess}"
    puts "Opponent chose #{opponent_guess}"
    puts " "
    puts "Current Score:"
    puts "#{current_user.name} - #{user_score}"
    puts "Opponent - #{opponent_score}"

  end

end
