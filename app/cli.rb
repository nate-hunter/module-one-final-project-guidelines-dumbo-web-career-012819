
######


#####

def run_method
  prompt = TTY::Prompt.new

# WELCOME MESSAGE & LOGIN #
  # 1. Displays welcome message;
  # 2. user enters username;
  # 3. user chooses to (1) start new game, (2) View highscore, and (3)...




#   banner
#   # welcome
#   # space
#   # greeting

  enter_name
  user_name = gets.chomp
  current_user = find_or_add_user(user_name)
  user_stat_table(current_user)



#   space

#   puts "====================================================="
#   element = prompt.select('What is your element?', ["Water", "Earth", "Air"])
#   current_user.update(element: element)
#   space
#   space

# # GAME ONE INTRO #
#   ## 1. Introduces scenario
#   ## 2. Gives user option to investigate
#   intro
#   scene_one_answer1 = prompt.select('What do you do?', ["Go investigate", "Go back to sleep"])
#   space

# # FIRST SCENARIO #
#   ## 1. Option to engage fire-nation soldier
#   ## 2. Option to (1) direct attack, (2) sneak attack, or (3) sneak by
#   first_scenario_question_one(scene_one_answer1)
#   space
#   scene_one_answer2 = prompt.select('Do you engage?', ["Yes", "No"])
#   space
#   first_scenario_question_two(scene_one_answer2)
#   ### RSP FIGHT ###
#   game_one_score = 0  ## This variable used to track game 1's score
#   opponent1 = Opponent.find_by(name: "Soldier Geoff")
#   fight_one_score = rsp_match(current_user, opponent1, 2, 7) ## RSP Happening; saved as a variable to use score ##
#   game_one_score += fight_one_score   ## Fight score added to game 1 score.
#   ### CREATE A MATCH INSTANCE ###
#   scene1_match1 = create_match(current_user.id, "Game 1, Scene 1")    # new match created
#   match1_id = scene1_match1.id

#   updated_match = update_match(scene1_match1, fight_one_score, 2)

#   ### Below tests data retrieved ###
#   puts "You scored #{game_one_score} point(s)."
#   space
#   puts "You won: #{updated_match.user_win}"
#   space

#   ### Transition ###
#   #transition_to_scene_two(user_id, opponent_id, location, 2)
#   transition_to_scene_two(updated_match)

# # SECOND SCENARIO #
#   second_scenario_intro
#   second_scenario_fight_prompt1
#   second_scenario_question1

    third_scenario(current_user)
    # fourth_scenario(current_user)
    final_scenario(current_user)






  #  binding.pry

  # FIRST FIGHT (w/ Geoff) #
  # first_fight_question1 = prompt.select('What do you do?', ["Engage directly", "Sneak attack", "Run away"])







end
