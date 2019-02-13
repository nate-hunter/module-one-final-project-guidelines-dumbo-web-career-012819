###

# I want to build a method to create a game loop

def new_game

  enter_name
  nter_name
  user_name = gets.chomp
  current_user = find_or_add_user(user_name)
  space
  element = prompt.select('What is your element?', ["Water", "Earth", "Air"])
  current_user.update(element: element)
  space
  space

  ### intro method ###

end
