def fourth_scenario(current_user)

  ##################################
  ############ STRINGS #############
  ##################################

  def break_door_lock(current_user)
    system "clear"
    puts "You find a metal pipe nearby and try to break the lock."
    sleep 1
    puts "You smash it a few times but it doesn’t break."
    sleep 1
  end

  def kick_down_door(current_user)
    system "clear"
    puts "You take a few steps back and try to kick the door down."
    sleep 1
    puts "It shakes the door but it doesn’t seem to be working."
    sleep 1
  end

  def find_another_way(current_user)
    system "clear"
    puts "You go around the temple in search of another way in."
    sleep 1
    puts "You find a closed window right around the corner."
    sleep 1

    find_another_way_prompt(current_user)
  end

  def go_around(current_user)
    system "clear"
    puts "The window seems too high to climb. You continue looking for a more suitable entrance."
    sleep 1
    puts "As you run around the temple, you find an open side door."
    sleep 1
    puts "You go inside. The temple is filled with smoke and it’s hard to see,"
    sleep 1
    puts "but you can still hear the villagers."
    sleep 1

    follow_sounds_prompt(current_user)
  end

  def break_window(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You look around and find a large rock. You throw the rock and it breaks the window."
    sleep 1
    puts "With a running start, you climb the wall and hang on the window ledge."
    sleep 1
    puts "You pull yourself up and make your way into the temple."
    sleep 1
    puts "Finally inside, you notice the temple is filled with smoke and it’s hard to see,"
    sleep 1
    puts "but you can still hear the villagers."
    sleep 1
    
    follow_sounds_prompt(current_user)
  end

  def follow_sounds(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You call out for the villagers and their screams become louder."
    sleep 1
    puts "You follow their cries and find them huddled in a corner."
    sleep 1

    villagers_scared_prompt(current_user)
  end

  def burning_pillar(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You tell the villagers to stay where they are and you’ll find a safe way to leave the temple."
    sleep 1
    puts "They’re hesitant but agree to stay put."
    sleep 1
    puts "You go back the way you came, but all of a sudden, you feel a rumble."
    sleep 1
    puts "Out of nowhere a burning pillar falls from the ceiling."
    sleep 1
    puts "You have 3 seconds to respond"
    sleep 1
    
    burning_pillar_prompt(current_user)
  end

  def burning_pillar_with_villagers(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You tell the villagers to hold hands and follow you."
    sleep 1
    puts "You lead them back the way you came, but all of a sudden, you feel a rumble."
    sleep 1
    puts "Out of nowhere a burning pillar falls from the ceiling."
    sleep 1
    puts "You have 3 seconds to respond"
    sleep 1
    
    burning_pillar_with_villagers_prompt(current_user)
  end

  def jump(current_user)
    system "clear"
      current_user.health -= 10
      current_user.save
    puts "You jump backwards and the pillar crashes in front of you."
    sleep 1
    puts "The way you came has been blocked."
    sleep 1
    puts "You turn around and search for another exit."
    sleep 1
    puts "At that moment, you see a glimmer of sunlight in the corner."
    sleep 1

    jump_prompt(current_user)
  end

  # def jump_with_villagers
  #   system "clear"
    
  # end

  def push_villagers(current_user)
    system "clear"
      current_user.health -= 10
      current_user.save
    puts "You push the villagers out of the way and the pillar crashes between you and the villagers."
    sleep 1
    
    push_villagers_prompt(current_user)
  end

  def block(current_user)
    system "clear"
      current_user.health -= 20
      current_user.save
    puts "You block the pillar from falling on you with your bending."
    sleep 1
    puts "The pillar is so heavy you strain yourself, but you manage to move it over to the side,"
    sleep 1
    puts "preventing it from blocking the exit."
    sleep 1

    block_prompt(current_user)
  end

  def block_with_villagers(current_user)
    system "clear"
      current_user.health -= 15
      current_user.save
    puts "You block the pillar with your bending and hold it up."
    sleep 1
    puts "You yell at the villagers to quickly move under the pillar and out to safety."
    sleep 1
    puts "You’re strained beyond belief but somehow manage to keep the pillar from falling"
    sleep 1
    puts "on top of the villagers as they scurry outside."
    sleep 1
    puts " "
    puts "Once outside with all the villagers, they celebrate and thank you for saving them."
    sleep 1
    puts "As a token of their gratitude, they give you some bread and gloves."
    sleep 1
    puts "You thank them for the gifts and continue your way through the village."
    sleep 1

    
    # block_with_villagers_prompt
  end

  def move_pillar(current_user)
    system "clear"
      current_user.health -= 10
      current_user.save
    puts "You try to move the pillar with your bending, but it’s too heavy."
    sleep 1
    puts "You call to the villagers and tell them to stay where they are."
    sleep 1
    puts "You try to find a way around, but it’s hopeless."
    sleep 1

    move_pillar_prompt(current_user)
  end

  def give_up(current_user)
    system "clear"
    puts "The task at hand is too monumental for you."
    sleep 1
    puts "You decide the best course of action is to abandon the villagers and save yourself."
    sleep 1
    puts "You run towards the exit and make it outside."
    sleep 1
    puts "Once you catch your breath, you continue going through the village."
    sleep 1
  end

  def back_to_villagers(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You go back to look for the villagers. You find them hiding in the same corner."
    sleep 1

    back_to_villagers_prompt(current_user)
  end

  def check_exit(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You decide you should check if there are any other surprises along the way."
    sleep 1
    puts "Fortunately, there aren't any and the way out seems clear."
    sleep 1

    check_exit_prompt(current_user)
  end

  def tell_villagers_to_follow(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You tell the villagers you found a way out and tell them to follow you."
    sleep 1
    puts "They eagerly get up and follow you outside."
    sleep 1
    puts " "
    puts "Once outside with all the villagers, they celebrate and thank you for saving them."
    sleep 1
    puts "As a token of their gratitude, they give you some bread and gloves."
    sleep 1
    puts "You thank them for the gifts and continue your way through the village."
    sleep 1

  end

  def destroy_pillar(current_user)
    system "clear"
      current_user.health -= 10
      current_user.save
    puts "Unable to move the pillar, you try to destroy it instead."
    sleep 1
    puts "You gather all your remaining strength and attack the pillar."
    sleep 1
    puts "A few seconds later the pillar is destroyed and you can finally guide the villagers to safety."
    sleep 1

    destroy_pillar_prompt(current_user)
  end

  def sunlight(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You follow the sunlight and find a door."
    sleep 1
    puts "You try opening it but it’s locked shut."
    sleep 1

    sunlight_prompt(current_user)
  end

  def go_outside(current_user)
    system "clear"
    puts "You finally make it outside with the villagers."
    sleep 1
    puts " "
    puts "Once outside with all the villagers, they celebrate and thank you for saving them."
    sleep 1
    puts "As a token of their gratitude, they give you some bread and gloves."
    sleep 1
    puts "You thank them for the gifts and continue your way through the village."
    sleep 1

  end

  def kick_door(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You kick the door a few times and it opens. You finally make it out of the temple."
    sleep 1
    puts " "
    puts "Once outside with all the villagers, they celebrate and thank you for saving them."
    sleep 1
    puts "As a token of their gratitude, they give you some bread and gloves."
    sleep 1
    puts "You thank them for the gifts and continue your way through the village."
    sleep 1
  end

  def tackle_door(current_user)
    system "clear"
      current_user.health -= 5
      current_user.save
    puts "You tackle the door with your shoulder a few times but it doesn’t budge."
    sleep 1

    tackle_door_prompt(current_user)
  end

  def tackle_door_again(current_user)
    system "clear"
      current_user.health -= 15
      current_user.save
    puts "You tackle the door one last time and dislocate your shoulder."
    sleep 1

    tackle_door_again_prompt(current_user)
  end

  def accept_fate(current_user)
    system "clear"
    puts "Exhausted, injured, and unmotivated, you give up and sit down with your back against the door."
    sleep 1
    puts "You think back to your childhood and question what decisions you had to make to get here."
    sleep 1
    puts "As you start to doze off, you think to yourself, 'This isn't so bad'."
    sleep 1
    puts "You give into the fumes and the heat and give up."
    sleep 1
  end

  def look_for_another_way(current_user)
    system "clear"
    puts "You search for another way out only to find yourself surrounded by a wall of flames."
    sleep 1
    puts "You frantically try to put the fire out to no avail."
    sleep 1
    puts "Eventually the flames engulf you."
    sleep 1 
    puts "You pass out. Game over."
    sleep 1
  end

  # def outside
  #   system "clear"
  #   puts "Once outside with all the villagers, they celebrate and thank you for saving them. As a token of their gratitude, they give you some bread and gloves. You thank them for the gifts and continue your way through the village."
  # end

  ##################################
  ############# START ##############
  ##################################

  prompt = TTY::Prompt.new
  system "clear"

  puts "You continue making your way through the village and come across a burning temple."
  sleep 1
  puts "You can hear people yelling for help inside."
  sleep 1

  intro_prompt_answer = prompt.select('What do you do?', ["Run inside and save them", "Look for water to put out the fire", "Walk away"])




  # puts "time start"
  # fin = Time.now + 3
  # while Time.now < fin
  #   fin - Time.now
  #   sleep 1 
  #   return "Too late"
  # end
  # puts "time end"
  

  

  ##################################
  ########### ARGUMENTS ############
  ##################################

  def intro_prompt(intro_prompt_answer, current_user)

    if intro_prompt_answer == "Run inside and save them"
      system "clear"
      puts "You run up the steps to save the villages. The doors have been chained shut."
      # sleep 1

      run_into_temple(current_user)

    elsif intro_prompt_answer == "Look for water to put out the fire"
      system "clear"
      puts "You frantically search for water but find nothing. You return to the temple."
      sleep 1

      look_for_water(current_user)

    else
      system "clear"
      puts "It’s too dangerous and you need to save your energy in case you run into more trouble."
      sleep 1
      puts "You continue making your way through the village."
      sleep 1
    end
  end


  def run_into_temple(current_user)
    prompt = TTY::Prompt.new
    run_into_temple_answer = prompt.select('What do you do?', ["Try to break the lock", "Kick down the door", "Look for another way in"])

    run_into_temple_prompt(run_into_temple_answer, current_user)
    
  end

  def run_into_temple_prompt(run_into_temple_answer, current_user)
    
    if run_into_temple_answer == "Try to break the lock"
      break_door_lock(current_user)
      break_temple_lock_prompt(current_user)

    elsif run_into_temple_answer == "Kick down the door"
      kick_down_door(current_user)
      kick_temple_door_prompt(current_user)

    else
      find_another_way(current_user)
    end
  end

  def look_for_water(current_user)
    prompt = TTY::Prompt.new
    intro_prompt_answer = prompt.select('What do you do?', ["Run inside and save them", "Walk away"])

    intro_prompt(intro_prompt_answer, current_user)
  end

  ##################################
  ##################################
  ##################################

  def break_temple_lock(break_temple_lock_answer, current_user)
    
    if break_temple_lock_answer == "Continue trying"
      system "clear"
      puts "You can’t give up so soon."
      sleep 1
      puts "With all your might you give the lock one final smash, and it breaks open."
      sleep 1
      puts "You kick the door open and run inside."
      sleep 1
      puts "The temple is filled with smoke and it’s hard to see, but you can still hear the villagers."
      sleep 1

      follow_sounds_prompt(current_user)

    elsif break_temple_lock_answer == "Kick down the door"
      kick_down_door(current_user)
      kick_temple_door_prompt(current_user)

    else
      find_another_way(current_user)
    end
  end

  def kick_temple_door(kick_temple_door_answer, current_user)

    if kick_temple_door_answer == "Continue trying"
      system "clear"
      current_user.health -= 10
      current_user.save
      puts "You can’t give up so soon."
      sleep 1
      puts "You take a few steps back, run up and try to break the door."
      sleep 1
      puts "It doesn’t budge and you’ve hurt yourself in the process."
      sleep 1
      puts "You give up trying to kick the door down."
      sleep 1

      kick_temple_door_again_prompt(current_user)

    elsif kick_temple_door_answer == "Try to break the lock"
      break_door_lock(current_user)
      break_temple_lock_prompt(current_user)

    else
      find_another_way(current_user)
    end
  end

  def kick_temple_door_again_method(kick_temple_door_again_answer, current_user)
    if kick_temple_door_again_answer == "Try to break the lock"
      break_door_lock(current_user)
      break_temple_lock_after_kick_prompt(current_user)

    else
      find_another_way(current_user)
    end
  end

  def find_another_way_method(find_another_way_answer, current_user)
    if find_another_way_answer == "Continue searching for another way in"
      go_around(current_user)

    else
      break_window(current_user)
    end
  end

  ##################################
  ##################################
  ##################################

  def break_temple_lock_prompt(current_user)
    prompt = TTY::Prompt.new
    break_temple_lock_answer = prompt.select('What do you do?', ["Continue trying", "Kick down the door", "Look for another way in"])

    break_temple_lock(break_temple_lock_answer, current_user)
  end

  def break_temple_lock_after_kick_prompt(current_user)
    prompt = TTY::Prompt.new
    break_temple_lock_answer = prompt.select('What do you do?', ["Continue trying", "Look for another way in"])

    break_temple_lock(break_temple_lock_answer, current_user)
  end

  def kick_temple_door_prompt(current_user)
    prompt = TTY::Prompt.new
    kick_temple_door_answer = prompt.select('What do you do?', ["Continue trying", "Try to break the lock", "Look for another way in"])

    kick_temple_door(kick_temple_door_answer, current_user)
  end

  def kick_temple_door_again_prompt(current_user)
    prompt = TTY::Prompt.new
    kick_temple_door_again_answer = prompt.select('What do you do?', ["Try to break the lock", "Look for another way in"])

    kick_temple_door_again_method(kick_temple_door_again_answer, current_user)
  end

  def find_another_way_prompt(current_user)
    prompt = TTY::Prompt.new
    find_another_way_answer = prompt.select('What do you do?', ["Continue searching for another way in", "Break the window and climb in"])

    find_another_way_method(find_another_way_answer, current_user)
  end




  ##################################
  ############ PART II #############
  ##################################


  def follow_sounds_method(follow_sounds_answer, current_user)
    follow_sounds(current_user)
  end

  def villagers_scared_method(villagers_scared_answer, current_user)
    if villagers_scared_answer == "Tell them to follow you"
      burning_pillar_with_villagers(current_user)
    else
      burning_pillar(current_user)
    end
  end

  def burning_pillar_method(burning_pillar_answer, current_user)
    
    if burning_pillar_answer == "Jump out of the way"
      jump(current_user)
    else 
      block(current_user)
    end
  end

  def burning_pillar_with_villagers_method(burning_pillar_with_villagers_answer, current_user)
    
    if burning_pillar_with_villagers_answer == "Jump out of the way"
      jump(current_user)

    elsif burning_pillar_with_villagers_answer == "Push the villagers out of the way"
      push_villagers(current_user)

    else
      block_with_villagers(current_user)
    end

  end

  def jump_method(jump_answer, current_user)
    if jump_answer == "Follow the sunlight"
      sunlight(current_user)
    else
      look_for_another_way(current_user)
    end
  end

  def push_villagers_method(push_villagers_answer, current_user)
    if push_villagers_answer == "Try to move the pillar with your bending"
      move_pillar(current_user)
    else
      give_up(current_user)
    end
  end

  def block_method(block_answer, current_user)
    if block_answer == "Go back to the villagers"
      back_to_villagers(current_user)
    else
      check_exit(current_user)
    end
  end

  def move_pillar_method(move_pillar_answer, current_user)
    if move_pillar_answer == "Destroy pillar"
      destroy_pillar(current_user)
    else
      give_up(current_user)
    end
  end

  def back_to_villagers_method(back_to_villagers_answer, current_user)
    tell_villagers_to_follow(current_user)
  end

  def check_exit_method(check_exit_answer, current_user)
    if check_exit_answer == "Go back to the villagers"
      back_to_villagers(current_user)
    else
      give_up(current_user)
    end
  end

  def destroy_pillar_method(destroy_pillar_answer, current_user)
    go_outside(current_user)
  end

  def sunlight_method(sunlight_answer, current_user)
    if sunlight_answer == "Kick the door"
      kick_door(current_user)
    else
      tackle_door(current_user)
    end
  end

  def tackle_door_method(tackle_door_answer, current_user)
    if tackle_door_answer == "Continue trying"
      tackle_door_again(current_user)
    else
      kick_door(current_user)
    end
  end

  def tackle_door_again_method(tackle_door_again_answer, current_user)
    if tackle_door_again_answer == "Accept your fate"
      accept_fate(current_user)
    else
      kick_door(current_user)
    end
  end

  # def block_with_villagers_method(block_with_villagers_answer)
    
  # end

  ##################################
  ##################################
  ##################################

  def follow_sounds_prompt(current_user)
    prompt = TTY::Prompt.new
    follow_sounds_answer = prompt.select('What do you do?', ["Follow the cries of the villagers"])

    follow_sounds_method(follow_sounds_answer, current_user)
  end

  def villagers_scared_prompt(current_user)
    prompt = TTY::Prompt.new
    villagers_scared_answer = prompt.select('What do you do?', ["Tell them to follow you", "Tell them to stay while you find a safe way out"])

    villagers_scared_method(villagers_scared_answer, current_user)
  end

  def burning_pillar_prompt(current_user)
    prompt = TTY::Prompt.new
    burning_pillar_answer = prompt.select('What do you do?', ["Jump out of the way", "Block the pillar with your bending"])

    burning_pillar_method(burning_pillar_answer, current_user)
  end

  def burning_pillar_with_villagers_prompt(current_user)
    prompt = TTY::Prompt.new
    burning_pillar_with_villagers_answer = prompt.select('What do you do?', ["Jump out of the way", "Push the villagers out of the way", "Block the pillar with your bending"])

    burning_pillar_with_villagers_method(burning_pillar_with_villagers_answer, current_user)
  end

  def jump_prompt(current_user)
    prompt = TTY::Prompt.new
    jump_answer = prompt.select('What do you do?', ["Follow the sunlight", "Look for another way out"])

    jump_method(jump_answer, current_user)
  end

  def push_villagers_prompt(current_user)
    prompt = TTY::Prompt.new
    push_villagers_answer = prompt.select('What do you do?', ["Try to move the pillar with your bending", "Give up and save yourself"])

    push_villagers_method(push_villagers_answer, current_user)
  end

  def block_prompt(current_user)
    prompt = TTY::Prompt.new
    block_answer = prompt.select('What do you do?', ["Go back to the villagers", "Check to see if the exit is clear"])

    block_method(block_answer, current_user)
  end

  def move_pillar_prompt(current_user)
    prompt = TTY::Prompt.new
    move_pillar_answer = prompt.select('What do you do?', ["Destroy pillar", "Give up and save yourself"])

    move_pillar_method(move_pillar_answer, current_user)
  end

  def back_to_villagers_prompt(current_user)
    prompt = TTY::Prompt.new
    back_to_villagers_answer = prompt.select('What do you do?', ["Tell the villagers to come with you"])

    back_to_villagers_method(back_to_villagers_answer, current_user)
  end

  def check_exit_prompt(current_user)
    prompt = TTY::Prompt.new
    check_exit_answer = prompt.select('What do you do?', ["Go back to the villagers", "Go outside and save yourself"])

    check_exit_method(check_exit_answer, current_user)
  end

  def destroy_pillar_prompt(current_user)
    prompt = TTY::Prompt.new
    destroy_pillar_answer = prompt.select('What do you do?', ["Go outside"])

    destroy_pillar_method(destroy_pillar_answer, current_user)
  end

  def sunlight_prompt(current_user)
    prompt = TTY::Prompt.new
    sunlight_answer = prompt.select('What do you do?', ["Kick the door", "Tackle the door"])

    sunlight_method(sunlight_answer, current_user)
  end

  def tackle_door_prompt(current_user)
    prompt = TTY::Prompt.new
    tackle_door_answer = prompt.select('What do you do?', ["Kick the door", "Continue trying"])

    tackle_door_method(tackle_door_answer, current_user)
  end

  def tackle_door_again_prompt(current_user)
    prompt = TTY::Prompt.new
    tackle_door_again_answer = prompt.select('What do you do?', ["Kick the door", "Accept your fate"])

    tackle_door_again_method(tackle_door_again_answer, current_user)
  end

  # def block_with_villagers_prompt
  #   prompt = TTY::Prompt.new
  #   block_with_villagers_answer = prompt.select('What do you do?', ["Follow the sunlight", "Look for another way out"])

  #   block_with_villagers_method(block_with_villagers_answer)
  # end


  intro_prompt(intro_prompt_answer, current_user)

end