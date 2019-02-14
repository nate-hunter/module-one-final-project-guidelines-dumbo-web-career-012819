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

def rsp_match(current_user, opponent, user_num, opp_num)
  prompt = TTY::Prompt.new

  opponent_score = 0
  user_score = 0

  until opponent_score == opp_num || user_score == user_num

    user_guess = prompt.select('Select your weapon', ["Rock", "Paper", "Scissors"])
    opponent_guess = ["Rock", "Paper", "Scissors"].sample

    system 'clear'
    if game_rules[opponent_guess.to_sym] == user_guess
      opponent_score += 1
      puts "====================================================="
      puts " "
      puts "-----------------------------------------------------"
      puts "Fire Nation #{opponent.name} wins. Booooo".upcase
      puts "-----------------------------------------------------"
    elsif game_rules[user_guess.to_sym] == opponent_guess
      user_score += 1
      puts "====================================================="
      puts " "
      puts "-----------------------------------------------------"
      puts "#{current_user.name} wins!!".upcase
      puts "-----------------------------------------------------"
    else
      puts "====================================================="
      puts " "
      puts "-----------------------------------------------------"
      puts "tie game".upcase
      puts "-----------------------------------------------------"
    end

    puts " "
    puts "#{current_user.name} chose: #{user_guess}"
    puts "Fire Nation #{opponent.name}: #{opponent_guess}"
    puts " "
    puts "====================================================="
    puts "  ___                     _     ___
 / __|  _ _ _ _ _ ___ _ _| |_  / __| __ ___ _ _ ___
| (_| || | '_| '_/ -_) ' \\  _| \\__ \\/ _/ _ \\ '_/ -_) O
 \\___\\_,_|_| |_| \\___|_||_\\__| |___/\\__\\___/_| \\___  O"
    puts " "
    puts "====================================================="
    puts " "
    puts "+-------+-------------------------------------------+"
    puts "  SCORE     FIGHTER                                  "
    puts "+-------+-------------------------------------------+"
    puts "    #{user_score}        #{current_user.name}"
    puts "    #{opponent_score}        Fire Nation #{opponent.name}"
    puts "+-------+-------------------------------------------+"
  end
  user_score
end
