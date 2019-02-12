## SECOND SCENARIO - FIGHT ##

def second_fight_question1
  prompt = TTY::Prompt.new
  sleep(3)
  second_fight_answer1 = prompt.select('What do you do? You have 5 seconds to respond!', ["Dodge", "Block"])
end

def second_fight_prompt1
  puts "You come across the front gates of the village. The gates are guarded by two fire nation soldiers. They see you and suddenly attack with fire."
  second_fight_question1
end
