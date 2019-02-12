## FIRST SCENARIO - FIGHT ##

def first_scenario_one_question(answer1)
  if answer1 == "Go investigate"
    system "clear"
    puts "You go down the mountain and see a figure in the distance."
  else
    puts "Sweet dreams, the end."
    puts " "
    exit!
  end
end

def second_scenario_one_question(answer2)
  if answer2 == "Yes"
    system "clear"
    puts "You come across the figure and he is taking a leak. He’s a fire nation soldier."

    #### BEGIN FIGHT ####

    prompt = TTY::Prompt.new

    first_fight_answer1 = prompt.select('What do you do?', ["Engage", "Sneak attack", "Run"])
    space
    first_fight_question1(first_fight_answer1)

  else
    puts "You decide the confrontation isn't worth it and decide to sneak around the soldier."
    second_fight_prompt1
  end
end

def first_fight_question1(first_fight_answer1)
  ### input for later ##
  if first_fight_answer1 == "Engage"
    system "clear"
    puts "ENGAGEMENT ENGAGED"
  elsif first_fight_answer1 == "Sneak attack"
    system "clear"
    puts "You bonk the soldier on the head and he falls unconscious"
    second_fight_prompt1
  else
    system "clear"
    puts "You successfully ran away"
    second_fight_prompt1
  end
end

## FIGHT ONE ##

def game_rules
  {
    'Rock': "Scissors",
    'Paper': "Rock",
    'Scissors': "Paper"
  }
end

def rsp_match_one(current_user)
  prompt = TTY::Prompt.new
  # opponent_guesses = ["Rock", "Paper", "Scissors"]
  # opp_guess = opponent_guesses.sample

  opponent_score = 0
  user_score = 0

  until opponent_score == 2 || user_score == 2

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
