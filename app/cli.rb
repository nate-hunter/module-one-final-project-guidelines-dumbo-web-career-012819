require 'pry'

######

def run_method
  prompt = TTY::Prompt.new

# WELCOME MESSAGE & LOGIN #
  # 1. Displays welcome message;
  # 2. user enters username;
  # 3. user chooses to (1) start new game, (2) View highscore, and (3)...
  banner
  space
  greeting
  enter_name
  user_name = gets.chomp
  current_user = find_or_add_user(user_name)
  space
  element = prompt.select('What is your element?', ["Water", "Earth", "Air"])
  current_user.update(element: element)
  space
  space

# GAME ONE INTRO #
  ## 1. Introduces scenario
  ## 2. Gives user option to investigate
  intro
  scene_one_answer1 = prompt.select('What do you do?', ["Go investigate", "Go back to sleep"])
  space

# FIRST SCENARIO #
  ## 1. Option to engage fire-nation soldier
  ## 2. Option to (1) direct attack, (2) sneak attack, or (3) sneak by
  first_scenario_one_question(scene_one_answer1)
  space
  scene_one_answer2 = prompt.select('Do you engage?', ["Yes", "No"])
  space
  second_scenario_one_question(scene_one_answer2)
  # FIGHT #
  rsp_match_one(current_user)
  fourth_scenario






  # binding.pry
  # FIRST FIGHT (w/ Geoff) #
  # first_fight_question1 = prompt.select('What do you do?', ["Engage directly", "Sneak attack", "Run away"])







end
