## FIRST SCENARIO - FIGHT ##

def first_scenario_question_one(answer1)
  puts "====================================================="
  if answer1 == "Go investigate"
    system "clear"
    puts "You go down the mountain and see a figure in the distance."
  else
    puts "Sweet dreams, the end."
    sleep(2)
    banner
    welcome
  end
end

def first_scenario_question_two(answer2)
  puts "====================================================="
  if answer2 == "Yes"
    system "clear"
    puts "You come across the figure and he is taking a leak. He’s a fire nation soldier."

    #### BEGIN FIGHT ####

    prompt = TTY::Prompt.new

    first_fight_answer1 = prompt.select('What do you do?', ["Engage", "Sneak attack", "Run"])
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

def create_match(user_id, opponent_id=nil, location="Village")
  create_match = Match.create(user_id: user_id, opponent_id: opponent_id, location: location)
  create_match
end

def update_match_win_true_or_false(match, fight_one_score, num_to_win)
  if fight_one_score == num_to_win
    match.user_win = true
  elsif fight_one_score < num_to_win
    match.user_win = false
    puts "You did not win. Peace buddy."
    puts " "
  end
  match
end

def transition_to_scene_two(updated_match)
  prompt = TTY::Prompt.new

  if updated_match.user_win == true
    sleep (2)
    system 'clear'
    puts "====================================================="
    puts "Congrats on your success thus far, but your village still needs you."
  else
    # puts "Would you like to star a new game?"
    losing_answer = prompt.select('What would you like to do?', ["Main Menu", "Exit"])
    if losing_answer == "Main Menu"
      welcome
    elsif losing_answer == "Exit"
      goodbye
    end
  end
end
