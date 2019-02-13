require "pry"

def third_scenario(current_user)
	

	system "clear"
	puts "You go inside the village and see three items on the ground."
	sleep 1

    prompt = TTY::Prompt.new
    pick_up_item_answer = prompt.select('Which do you pick up?', ["Bread (replenish health)", "Sword (+10 attack)", "Shield (+10 defense)"])

##############################
##############################
##############################

	def bread(current_user)
		system "clear"
		puts "You've successfully replenished your health!"
		sleep 1

		next_prompt(current_user)
	end

	def sword(current_user)
		system "clear"
		puts "You've gained a new weapon!"
		sleep 1
		puts "Your attack strength successfully increased!"
		sleep 1

		next_prompt(current_user)
	end

	def shield(current_user)
		system "clear"
		puts "You've gained a new shield!"
		sleep 1
		puts "Your defensive strength successfully increased!"
		sleep 1
		
		next_prompt(current_user)
	end

	def notice_soldier(current_user)
		system "clear"
		puts "As you make your way through the village, you see rubble and burning buildings all around."
		sleep 1
		puts "You hear sounds of people fighting in the distance."
		sleep 1
		puts "Suddenly, you hear someone calling for help."
		sleep 2
		puts "You run towards the call and turn the corner when you stop in your tracks."
		sleep 1
		puts "You see a soldier harassing a villager."
		sleep 1
		puts "The villager see you and cries for your help."
		sleep 1
		puts "The soldier then turns to see you standing there."
		sleep 1

		notice_soldier_prompt(current_user)
	end
################################################################################################
	def engage_soldier(current_user)
		system "clear"
		puts "Without hesitating, you leap towards the soldier and engage in a battle!"
		sleep 1

		engage_soldier_prompt(current_user) 
	end
################################################################################################
	def call_soldier(current_user)
		system "clear"
		puts "You call out to the soldier to stop!"
		sleep 1
		puts "Disgruntled, he drops the villager and attacks you immediately"
		sleep 2
		puts "You have 3 seconds to respond"

		call_soldier_prompt(current_user)
	end

	def logic_with_soldier(current_user)
		system "clear"
		puts "Being a pacifist, you calmly walk up to the soldier and begin to reason with him."
		sleep 1
		puts "As he holds onto the villager, you calmly de-escalate the situation."
		sleep 1
		puts "He lowers the villager and lets her go."
		sleep 1
		puts "Then, you take out your handy-dandy tea kit and begin to have a teaching moment."
		sleep 1
		puts "After a while, the soldier learns the errors of his ways."
		sleep 1
		puts "He tells you he wanted to be a baker his whole life."
		sleep 1
		puts "You tell him to pursue his dream, and he agrees, then thanks you for this moment."
		sleep 1
		puts "He then calmly leaves the village a changed man, before helping an elderly woman who fell."
		sleep 1
		
		next_after_logic_prompt(current_user)
	end

	def run_away(current_user)
		system "clear"
		puts "The villager isn't worth your time."
		sleep 1
		puts "Not to mention, the soldier is quite large and would easily defeat you."
		sleep 1
		puts "You decide ignoring the villager is your best option."
		sleep 1
		puts "You pretend to be blind and continue on your way."
		sleep 1

		next_after_logic_prompt(current_user)
	end

	def dodge_attack(current_user)
		system "clear"
		puts "You successfully dodge the attack!"
		sleep 1
		puts ""
	end

	def block_attack(current_user)
		system "clear"
	end

##############################
##############################
##############################

	def next_prompt(current_user)
		prompt = TTY::Prompt.new
		next_answer = prompt.select(' ', ["Continue moving along"])

		next_method(next_answer, current_user)
	end

	def next_after_logic_prompt(current_user)
		prompt = TTY::Prompt.new
		next_after_logic_answer = prompt.select(' ', ["Continue moving along"])

		next_after_logic_method(next_after_logic_answer, current_user)
	end

	def notice_soldier_prompt(current_user)
		prompt = TTY::Prompt.new
		notice_soldier_answer = prompt.select('What do you do?', ["Run up and engage immediately", "Call out and say 'STOP!'", "Try to logically reason with him", "Run away"])

		notice_soldier_method(notice_soldier_answer, current_user)
	end

	def call_soldier_prompt(current_user)
		prompt = TTY::Prompt.new
		call_soldier_answer = prompt.select('What do you do?', ["Dodge the attack", "Block with your bending"])

		call_soldier_method(call_soldier_answer, current_user)
	end

##############################
##############################
##############################

	def pick_up_item_method(pick_up_item_answer, current_user)
		if pick_up_item_answer == "Bread (replenish health)"
			current_user.update(health: 100)
			bread(current_user)
		elsif pick_up_item_answer == "Sword (+10 attack)"
			current_user.attack += 10
			current_user.save
			sword(current_user)
		elsif pick_up_item_answer == "Shield (+10 defense)"
			current_user.defense += 10
			current_user.save
			shield(current_user)
		end
	end

	def next_method(next_answer, current_user)
		if next_answer == "Continue moving along"
			notice_soldier(current_user)
		end
	end

	def next_after_logic_method(next_answer, current_user)
	end

	def notice_soldier_method(notice_soldier_answer, current_user)
		if notice_soldier_answer == "Run up and engage immediately"
			engage_soldier(current_user)
		elsif notice_soldier_answer == "Call out and say 'STOP!'"
			call_soldier(current_user)
		elsif notice_soldier_answer == "Try to logically reason with him"
			logic_with_soldier(current_user)
		else
			run_away(current_user)
		end
	end

	def call_soldier_method(call_soldier_answer, current_user)
		if call_soldier_answer == "Dodge the attack"
			dodge_attack(current_user)
		else
			block_attack(current_user)
		end
	end




	pick_up_item_method(pick_up_item_answer, current_user)
	# binding.pry

end