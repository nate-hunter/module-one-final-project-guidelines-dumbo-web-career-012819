def space
  puts " "
end

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

    system 'clear'
    if game_rules[opponent_guess.to_sym] == user_guess
      opponent_score += 1
      puts "opponent wins".upcase
    elsif game_rules[user_guess.to_sym] == opponent_guess
      user_score += 1
      puts "#{current_user.name} wins".upcase
    else
      puts "tie game".upcase
    end

    space
    puts "#{current_user.name} chose #{user_guess}"
    puts "Opponent chose #{opponent_guess}"
    space
    puts "  ___                     _     ___                  _
 / __|  _ _ _ _ _ ___ _ _| |_  / __| __ ___ _ _ ___ (_)
| (_| || | '_| '_/ -_) ' \\  _| \\__ \\/ _/ _ \\ '_/ -_) _
 \\___\\_,_|_| |_| \\___|_||_\\__| |___/\\__\\___/_| \\___ (_)"
    space
    puts "#{current_user.name} - #{user_score}"
    puts "Opponent - #{opponent_score}"
    space

  end

end
