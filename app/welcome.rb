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
  puts "====================================================="
  puts "Hello there"
end

def enter_name
  puts "====================================================="
  puts "Enter your name"
end

def find_or_add_user(name)
  new_user = User.find_or_create_by(name: name)
  new_user
end

def choose_element
  puts "====================================================="
  puts "What elemental nation are you?"
end


##### WELCOME MENU #####
def welcome
  prompt = TTY::Prompt.new

  main_menu = [
    {"New Game" => -> do run_method end },
    {"View Stats" => -> do view_stats end},
    {"Delete File" => -> do delete_file end},
    {"Practice RSP" => -> do practice_rsp end},
    {"Exit" => -> do goodbye end}]
  puts "====================================================="
  response = prompt.select("Welcome!", main_menu)
  puts "====================================================="
  #welcome
end


### STATS ###
def current_user_high_score(user_name)
  current_user = User.find_by(name: user_name)
  score = current_user.total_score # Method from User model
  score
end

def view_user_high_score
  puts "====================================================="
  puts "Please enter your name."
  user_name = gets.chomp
  score = current_user_high_score(user_name)
  puts "====================================================="
  puts "Your highest score is: #{score}"
  puts "====================================================="
  sleep(3)
  system 'clear'
  welcome
end

def view_high_score
  highscore = User.user_with_highest_score  # Method from User model
  puts "====================================================="
  puts "The highest score is #{highscore.total_score} by #{highscore.name}."
  puts "====================================================="
  sleep(3)
  system 'clear'
  welcome
end

def best_players
  best_players = User.worthy_users.order(total_score: :desc)

  players = best_players.map do |user|
    "User #{user.name} scored #{user.total_score} points."
  end
  puts "====================================================="
  puts players
  puts "====================================================="
  #binding.pry
  welcome
end

def view_stats
  prompt = TTY::Prompt.new

  stats_menu = [
    {"View Your High Score" => -> do view_user_high_score end},
    {"View the Game's Best Players" => -> do best_players end},
    {"View the Game's High Score" => -> do view_high_score end},
    {"Back to Main Menu" => -> do welcome end},
    {"Exit" => -> do goodbye end}]
  puts "====================================================="
  response = prompt.select("Welcome statisticians!", stats_menu)
  puts "====================================================="
end

##### PRACTICE RSP #####
def practice_rsp
  puts "====================================================="
  guest = User.new(name: "Guest")
  fire_nation_soldier = Opponent.new(name: "Soldier")
  rsp_match(guest, fire_nation_soldier, 5, 5)
  sleep(5)
  system 'clear'
  welcome
end

##### GOODBYE #####
def goodbye
  puts "====================================================="
  puts "Thanks for playing!"
  puts " "
  puts "Goodbye"
  puts "====================================================="
  sleep(1)
  system 'clear'
  exit!
end
