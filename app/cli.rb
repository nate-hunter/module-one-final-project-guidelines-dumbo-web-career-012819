
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
  puts "After a long night of training in the mountains, you wake up to the sounds of screaming. In the distance you see a pillar of smoke."
end

def first_intro_question(answer1)
  if answer1 == "Go investigate"
    puts "You go down the mountain and see a figure in the distance."
  else
    puts "Sweet dreams, the end."
    puts " "
    exit!
  end
end

def second_intro_question(answer2)
  if answer2 == "Yes"
    puts "You come across the figure and he is taking a leak. He’s a fire nation soldier."
  else
    puts "You've gone away."
  end
end

## FIRST FIGHT ##
def first_fight_question(first_fight_question1)
  ### input for later ###
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
  space
  first_intro_question(intro_answer1)
  space
  intro_answer2 = prompt.select('Do you engage?', ["Yes", "No"])
  space
  second_intro_question(intro_answer2)

  # FIRST FIGHT (w/ Geoff) #
  # first_fight_question1 = prompt.select('What do you do?', ["Engage directly", "Sneak attack", "Run away"])








end
