## SECOND SCENARIO - FIGHT ##

def second_scenario_intro
  system 'clear'
  puts "====================================================="
  puts "You move closer to your village."
  puts " "
  puts "The shouts are getting louder and the scent of smoke and burning wood is more pungent."
  puts " "
  puts "As your heart races, your glistfully glide throught the wooded area you know so well."
  puts " "
  puts "You think, 'Why?'"
  puts " "
  puts "Why is this happening?"
  puts " "
  puts "Who would be so cruel to attack your village and its innocent habitants?"
  puts " "
  puts "As a powerful warrior, is this attack meant to be against you?"
  puts " "
end

def second_scenario_fight_prompt1
  puts "At last, you come across the village's front gate which is guarded by two fire nation soldiers."
  puts " "
  puts "====================================================="
  puts "They see you and suddenly attack with fire."
  puts " "
  #second_fight_question1
end

def second_scenario_question1
  prompt = TTY::Prompt.new
  sleep(3)
  second_fight_answer1 = prompt.select('What do you do? You have 5 seconds to respond!', ["Dodge", "Block"])
end
