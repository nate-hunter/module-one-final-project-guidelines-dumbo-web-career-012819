require 'pry'
require_relative '../app/models/match.rb'
require_relative '../app/models/opponent.rb'
require_relative '../app/models/user.rb'


def banner
  system "clear"
  puts " (  (             (
 )\\))(   '   (    )\\                  )       (
((_)()\\ )   ))\\  ((_)   (     (      (       ))\\
_(())\\_)() /((_)  _     )\\    )\\     )\\  '  /((_)
\\ \\((_)/ /(_))   | |   ((_)  ((_)  _((_))  (_))
 \\ \\/\\/ / / -_)  | |  / _|  / _ \\ | '  \\() / -_)
  \\_/\\_/  \\___|  |_|  \\__|  \\___/ |_|_|_|  \\___|  "
end

def space
  puts " "
end

def greeting
  puts "Hello there"
end

def enter_name
  puts "Enter your name"
end

def find_or_add_user(name)
  new_user = User.find_or_create_by(name: name)
  new_user
end

def choose_element
  puts "What elemental nation are you?"
end

## GAME INTRO ##
def intro
  system "clear"
  puts "After a long night of training in the mountains, you wake up to the sounds of screaming. In the distance you see a pillar of smoke."
end

def first_intro_question(answer1)
  if answer1 == "Go investigate"
    system "clear"
    puts "You go down the mountain and see a figure in the distance."
  else
    puts "Sweet dreams, the end."
    puts " "
    exit!
  end
end

def second_intro_question(answer2)
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

## FIRST FIGHT ##
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

def second_fight_question1
  prompt = TTY::Prompt.new
  second_fight_answer1 = prompt.select('What do you do? You have 5 seconds to respond!', ["Dodge", "Block"])
end

def second_fight_prompt1
  puts "You come across the front gates of the village. The gates are guarded by two fire nation soldiers. They see you and suddenly attack with fire."
  second_fight_question1
end


####
def run_method
  prompt = TTY::Prompt.new

  banner
  space
  greeting
  enter_name
  user_name = gets.chomp
  current_user = find_or_add_user(user_name)
  element = prompt.select('What is your element?', ["Water", "Earth", "Air"])
  current_user.update(element: element)
  space
  space
  space

  # GAME INTRO #
  intro
  intro_answer1 = prompt.select('What do you do?', ["Go investigate", "Go back to sleep"])
  space
  first_intro_question(intro_answer1)
  space
  intro_answer2 = prompt.select('Do you engage?', ["Yes", "No"])
  space
  second_intro_question(intro_answer2)

  # user_guess = prompt.select('Select your weapon', ["Rock", "Paper", "Scissors"])
  # user_guess = gets.chomp
  rsp_match(current_user)
  # binding.pry
  # FIRST FIGHT (w/ Geoff) #
  # first_fight_question1 = prompt.select('What do you do?', ["Engage directly", "Sneak attack", "Run away"])







end
