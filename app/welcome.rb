# WELCOME MESSAGE & LOGIN #
## 1. Displays welcome banner & message;
## 2. user enters username;
## 3. user chooses to (1) start new game, (2) View highscore, and (3)...

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


#####
def welcome
  prompt = TTY::Prompt.new

  main_menu = [
    {"New Game" => -> do new_game end },
    {"View High Score" => -> do view_high_score end},
    {"Delete File" => -> do delete_file end},
    {"Exit" => -> do goodbye end}]

  response = prompt.select("Welcome!", main_menu)
  #welcome
end
