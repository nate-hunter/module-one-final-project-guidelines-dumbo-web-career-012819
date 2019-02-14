
######
#TTY:: Table

#####

def run_method
  prompt = TTY::Prompt.new

  banner
  enter_name
  user_name = gets.chomp
  current_user = find_or_add_user(user_name)
  space
  puts "====================================================="
  element = prompt.select('What is your element?', ["Water", "Earth", "Air"])
  current_user.update(element: element)
  space
  space

###################
# GAME ONE INTRO  #
###################
  ## 1. Introduces scenario
  ## 2. Gives user option to investigate
  intro
  scene_one_answer1 = prompt.select('What do you do?', ["Go investigate", "Go back to sleep"])
  space

###################
# FIRST SCENARIO #
###################
  ## 1. Option to engage fire-nation soldier
  ## 2. Option to (1) direct attack, (2) sneak attack, or (3) sneak by
  first_scenario_question_one(scene_one_answer1)
  space
  scene_one_answer2 = prompt.select('Do you engage?', ["Yes", "No"])
  space
  first_scenario_question_two(scene_one_answer2)
  #---------------#
  ### RSP FIGHT ###
  #---------------#
  opponent1 = Opponent.find_by(name: "Soldier Geoff")
  game_match = create_match(current_user.id, opponent1.id)    # new match created

  number_user_to_win_s1 = 2
  number_opp_to_win_s1 = 7
  game_one_score = 0
  fight_one_score = rsp_match(current_user, opponent1, number_user_to_win_s1, number_opp_to_win_s1) ## RSP Happening; saved as a variable to use score ##

  # match1_id = game_match.id

  ### UPDATE TABLES ###
  game_match = update_match_win_true_or_false(game_match, fight_one_score, number_user_to_win_s1)

  game_one_score += fight_one_score   ## Fight score added to game 1 score.
  current_game_user_score = current_user.total_score += game_one_score

  game_match.update(match_score: current_game_user_score)


  puts "•••••••••••••••••••••••••••••••••••••••••••••••••••••"
  puts "You scored #{game_one_score} point(s)."
  puts "•••••••••••••••••••••••••••••••••••••••••••••••••••••"
  puts "You have #{current_game_user_score} total point(s)."
  puts "•••••••••••••••••••••••••••••••••••••••••••••••••••••"
  space
  # puts "You won: #{game_match.user_win}"
  # binding.pry
  space

  ### Transition ###
  #transition_to_scene_two(user_id, opponent_id, location, 2)
  transition_to_scene_two(game_match)
###################
# SECOND SCENARIO #
###################
  second_scenario_intro
  second_scenario_fight_prompt1
  second_scenario_question1
  #---------------#
  ### RSP FIGHT ###
  #---------------#
  opponent2 = Opponent.find_by(name: "Guard Bryke")

  number_user_to_win_s2 = 2
  number_opp_to_win_s2 = 7
  game_two_score = 0
  fight_two_score = rsp_match(current_user, opponent2, number_user_to_win_s2, number_opp_to_win_s2) ## RSP Happening; saved as a variable to use score ##

  ### UPDATE TABLES ###
  game_match = update_match_win_true_or_false(game_match, fight_one_score, number_user_to_win_s2)

  game_two_score += fight_two_score   ## Fight score added to game 1 score.
  #************************************************#

  current_game_user_score = current_user.total_score += game_two_score

  game_match.update(match_score: current_game_user_score)
  puts "•••••••••••••••••••••••••••••••••••••••••••••••••••••"
  puts "You scored #{game_two_score} point(s)."
  puts "•••••••••••••••••••••••••••••••••••••••••••••••••••••"
  puts "You have #{current_game_user_score} total point(s)."
  puts "•••••••••••••••••••••••••••••••••••••••••••••••••••••"
  # puts "You won: #{updated_match.user_win}"
  space

  puts "That's it for now."
  sleep(2)
  welcome




  # binding.pry
  # binding.pry





end
