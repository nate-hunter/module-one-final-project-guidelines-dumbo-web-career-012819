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

def countdown_to_welcome
  3.downto(0) do |i|
    sleep(1)
    puts i
  end
  system 'clear'
  welcome
end


##### WELCOME MENU #####
def welcome
  prompt = TTY::Prompt.new

  main_menu = [
    {"New Game" => -> do run_method end },
    {"View Stats" => -> do view_stats end},
    {"Delete File" => -> do delete_user end},
    {"Practice RSP" => -> do practice_rsp end},
    {"Exit" => -> do goodbye end}]
  puts "====================================================="
  response = prompt.select("Welcome!", main_menu)
  puts "====================================================="
end

#############
### STATS ###
#############
def current_user_high_score(user_name)
  current_user = User.find_by(name: user_name)
  score = current_user.total_score # Method from User model
  score
end

def view_user_high_score
  puts "====================================================="
  # puts "Please enter your name."
  # user_name = gets.chomp

  puts "Please enter your name?"
  name = gets.chomp
  user_name = User.find_by(name: name)
  if User.find_by(name: name) == user_name && user_name != nil

  # if User.find_by(name: "user_name") == user_name
    # binding.pry
    #score = current_user_high_score(user_name)
    puts "====================================================="
    # puts "Your highest score is: #{score}"
    puts "Your highest score is: #{user_name.score}"
    puts "====================================================="
  else
    puts " "
    puts "≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠"
    puts "Sorry, User doesn't exist."
    puts "≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠"
  end
  countdown_to_welcome
end

def view_high_score
  highscore = User.user_with_highest_score  # Method from User model

  if highscore != nil
    puts "====================================================="
    puts "The highest score is #{highscore.total_score} by #{highscore.name}."
    puts "====================================================="
  else
    puts " "
    puts "≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠"
    puts "There are no high scores at the moment. Play the game."
    puts "≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠"
  end

  countdown_to_welcome
end

def best_players
  best_players = User.worthy_users.order(total_score: :desc)

  players = best_players.map do |user|
    "User #{user.name} scored #{user.total_score} points."
  end

  if players.count != 0
    puts "====================================================="
    puts players
    puts "====================================================="
  else
    puts "≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠"
    puts "Oops, players have been wack or no one has played yet."
    puts "≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠"
    puts " "
  end

  countdown_to_welcome
end

def view_stats
  prompt = TTY::Prompt.new

  stats_menu = [
    {"View Your High Score" => -> do view_user_high_score end},
    {"View the Game's Best Players" => -> do best_players end},
    {"View the Game's High Score" => -> do view_high_score end},
    {"Back to Main Menu" => -> do
      system 'clear'
      welcome end},
    {"Exit" => -> do goodbye end}]
  puts "====================================================="
  response = prompt.select("Welcome statisticians!", stats_menu)
  puts "====================================================="
end

####################
### DELETE FILE: ###
####################
def delete_user
  prompt = TTY::Prompt.new

  puts "Please enter your name?"
  name = gets.chomp
  user_name = User.find_by(name: name)
  # user_name

  if User.find_by(name: name) == user_name && user_name != nil
    #binding.pry
    response = prompt.select("Are you sure you want to delete #{user_name.name}'s' file?", ["Yes", "No"])
    if response == "Yes"
      #binding.pry
      user_name.destroy
      puts "#{user_name.name}'s file has been deleted."
    else
      system 'clear'
      welcome
    end
  else
    puts "≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠"
    puts "User does not exist."
    puts "≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠≠"
  end

  countdown_to_welcome
end


## EXAMPLES: ##
def example_destroy
  user = User.find_by(name: 'David')
  user.destroy
end

def delete_self(current_user)
  User.find(current_user.id).destroy
  Dates.where(user_id: current_user.id).delete_all
  puts "Your file has been deleted"
end

########################
##### PRACTICE RSP #####
########################
def practice_rsp
  puts "====================================================="
  guest = User.new(name: "Guest")
  fire_nation_soldier = Opponent.new(name: "Soldier")
  rsp_match(guest, fire_nation_soldier, 5, 5)

  countdown_to_welcome
end

###################
##### GOODBYE #####
###################
def goodbye
  puts "====================================================="
  puts "Thanks for playing!"
  puts "-----------------------------------------------------"
  puts "Goodbye"
  puts "-----------------------------------------------------"
  sleep(3)
  system 'clear'
  exit!
end
