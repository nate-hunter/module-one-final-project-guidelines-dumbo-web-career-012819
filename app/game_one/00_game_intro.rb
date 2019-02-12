## GAME INTRO ##

def intro
  system "clear"
  puts "After a long night of training in the mountains, you wake up to the sounds of screaming. In the distance you see a pillar of smoke."
end

def first_scenario_one_question(answer1)
  if answer1 == "Go investigate"
    system "clear"
    puts "You go down the mountain and see a figure in the distance."
  else
    puts "Sweet dreams, the end."
    puts " "
    exit!
  end
end

def second_scenario_one_question(answer2)
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
