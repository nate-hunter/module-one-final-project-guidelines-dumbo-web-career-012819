def third_scenario(current_user, game_match)


	system "clear"
	puts user_stats(current_user)

	puts "You go inside the village and see three items on the ground."
	sleep 1

    prompt = TTY::Prompt.new
    pick_up_item_answer = prompt.select('Which do you pick up?', ["Bread (replenish health)", "Sword (+10 attack)", "Shield (+10 defense)"])

##############################
##############################
##############################

	def bread(current_user, game_match)
		system "clear"
	      current_user.health = 100
	      current_user.save
		puts user_stats(current_user)

		puts "You've successfully replenished your health!"
		puts "(Full health regen)".colorize(:green)

		next_prompt(current_user, game_match)
	end

	def sword(current_user, game_match)
		system "clear"
	      current_user.attack += 10
	      current_user.save
		puts user_stats(current_user)

		puts "You've gained a new weapon!"
		sleep 1
		puts "Your attack strength successfully increased!"
		puts "(+10 Attack)".colorize(:green)

		next_prompt(current_user, game_match)
	end

	def shield(current_user, game_match)
		system "clear"
	      current_user.defense += 10
	      current_user.save
		puts user_stats(current_user)

		puts "You've gained a new shield!"
		sleep 1
		puts "Your defensive strength successfully increased!"
		puts "(+10 Defense!)".colorize(:green)

		next_prompt(current_user, game_match)
	end

	def notice_soldier(current_user, game_match)
		system "clear"
		puts user_stats(current_user)

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

		notice_soldier_prompt(current_user, game_match)
	end
################################################################################################
	def engage_soldier(current_user, game_match)
		system "clear"
		puts user_stats(current_user)

		puts "Without hesitating, you leap towards the soldier and engage in a battle!"
		sleep 1
    # binding.pry
		attack_prompt(current_user, game_match)

	end
################################################################################################
	def call_soldier(current_user, game_match)
		system "clear"
		puts user_stats(current_user)

		puts "You call out to the soldier to stop!"
		sleep 1
		puts "Disgruntled, he drops the villager and attacks you immediately"
		sleep 2
		puts "You have 3 seconds to respond"

		call_soldier_prompt(current_user, game_match)
	end

	def logic_with_soldier(current_user, game_match)
		system "clear"
		puts user_stats(current_user)

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

		next_after_logic_prompt(current_user, game_match)
	end

	def run_away(current_user, game_match)
		system "clear"
		puts user_stats(current_user)

		puts "The villager isn't worth your time."
		sleep 1
		puts "Not to mention, the soldier is quite large and would easily defeat you."
		sleep 1
		puts "You decide ignoring the villager is your best option."
		sleep 1
		puts "You pretend to be blind and continue on your way."
		sleep 1

		next_after_logic_prompt(current_user, game_match)
	end

	def dodge_attack(current_user, game_match)
		system "clear"
		puts user_stats(current_user)

		puts "You successfully dodge the attack!"
		sleep 1

		counter_attack_prompt(current_user, game_match)
	end

	def block_attack(current_user, game_match)
		system "clear"
		user_stats(current_user)
		puts "You blocked the attack with your bending!"
		sleep 1

		counter_attack_prompt(current_user, game_match)
	end

	def attack(current_user, game_match)
		system "clear"
		puts user_stats(current_user)

		puts "You attack him!"
		sleep 1

		attack_prompt(current_user, game_match)
	end

	def run_away_after_attack(current_user, game_match)
		system "clear"
		puts user_stats(current_user)

		puts "His attack was too powerful and you're not sure if you can win."
		sleep 1
		puts "You decide the best course of action is to run away."
		sleep 1
		puts "You start to run, but the soldier attacks again and you're hit."
		sleep 1
		puts "However, it was just a graze and you successfully get away"
		sleep 1

		next_after_logic_prompt(current_user, game_match)
	end

##############################
##############################
##############################

	def next_prompt(current_user, game_match)
		prompt = TTY::Prompt.new
		next_answer = prompt.select(' ', ["Continue moving along"])

		next_method(next_answer, current_user, game_match)
	end

	def next_after_logic_prompt(current_user, game_match)
		prompt = TTY::Prompt.new
		next_after_logic_answer = prompt.select(' ', ["Continue moving along"])

		next_after_logic_method(next_after_logic_answer, current_user, game_match)
	end

	def notice_soldier_prompt(current_user, game_match)
		prompt = TTY::Prompt.new
		notice_soldier_answer = prompt.select('What do you do?', ["Run up and engage immediately", "Call out and say 'STOP!'", "Try to logically reason with him", "Run away"])

		notice_soldier_method(notice_soldier_answer, current_user, game_match)
	end

	def call_soldier_prompt(current_user, game_match)
		prompt = TTY::Prompt.new
		call_soldier_answer = prompt.select('What do you do?', ["Dodge the attack", "Block with your bending"])

		call_soldier_method(call_soldier_answer, current_user, game_match)
	end

	def counter_attack_prompt(current_user, game_match)
		prompt = TTY::Prompt.new
		counter_attack_answer = prompt.select('What do you do?', ["Attack", "Run away"])

		counter_attack_method(counter_attack_answer, current_user, game_match)
	end

  def attack_prompt(current_user, game_match)
    opponent3 = Opponent.find_by(name: "Captain Yon Rha")
    game_match

    number_user_to_win_s3 = 2
    number_opp_to_win_s3 = 7
    game_three_score = 0
    fight_three_score = rsp_match(current_user, opponent3, number_user_to_win_s3, number_opp_to_win_s3) ## RSP Happening; saved as a variable to use score ##

    #************************************************#
    ### UPDATE TABLES ###
    game_match = update_match_win_true_or_false(game_match, fight_three_score, number_user_to_win_s3)

    game_three_score += fight_three_score   ## Fight score added to game 1 score.

    current_game_user_score = current_user.total_score += game_three_score

    game_match.update(match_score: current_game_user_score)
    puts "•••••••••••••••••••••••••••••••••••••••••••••••••••••"
    puts "You scored #{game_three_score} point(s)."
    puts "•••••••••••••••••••••••••••••••••••••••••••••••••••••"
    puts "You have #{current_game_user_score} total point(s)."
    puts "•••••••••••••••••••••••••••••••••••••••••••••••••••••"
    # puts "You won: #{updated_match.user_win}"
    space
    #************************************************#



	# 	rsp_match(current_user, opponent, user_num, opp_num)
  #
	# 	game_one_score = 0  ## This variable used to track game 1's score
	# 	opponent4 = Opponent.find_by(name: "Captain Yon Rha")
	# 	fight_one_score = rsp_match(current_user, opponent4, 3, 4) ## RSP Happening; saved as a variable to use score ##
	# 	game_one_score += fight_one_score   ## Fight score added to game 1 score.
	# 	### CREATE A MATCH INSTANCE ###
	# 	scene3_match1 = create_match(current_user.id, "Game 1, Scene 3")    # new match created
	# 	match1_id = scene1_match1.id
  #
	# 	updated_match = update_match(scene1_match1, fight_one_score, 3)
	end

##############################
##############################
##############################

	def pick_up_item_method(pick_up_item_answer, current_user, game_match)
		if pick_up_item_answer == "Bread (replenish health)"
			current_user.update(health: 100)
			bread(current_user, game_match)
		elsif pick_up_item_answer == "Sword (+10 attack)"
			current_user.attack += 10
			current_user.save
			sword(current_user, game_match)
		elsif pick_up_item_answer == "Shield (+10 defense)"
			current_user.defense += 10
			current_user.save
			shield(current_user, game_match)
		end
	end

	def next_method(next_answer, current_user, game_match)
		if next_answer == "Continue moving along"
			notice_soldier(current_user, game_match)
		end
	end

	def next_after_logic_method(next_answer, current_user, game_match)
	end

	def notice_soldier_method(notice_soldier_answer, current_user, game_match)
		if notice_soldier_answer == "Run up and engage immediately"
			engage_soldier(current_user, game_match)
		elsif notice_soldier_answer == "Call out and say 'STOP!'"
			call_soldier(current_user, game_match)
		elsif notice_soldier_answer == "Try to logically reason with him"
			logic_with_soldier(current_user, game_match)
		else
			run_away(current_user, game_match)
		end
	end

	def call_soldier_method(call_soldier_answer, current_user, game_match)
		if call_soldier_answer == "Dodge the attack"
			dodge_attack(current_user, game_match)
		else
			block_attack(current_user, game_match)
		end
	end

	def counter_attack_method(counter_attack_answer, current_user, game_match)
		if counter_attack_answer == "Attack"
			attack(current_user, game_match)
		else
			run_away_after_attack(current_user, game_match)
		end
	end




	pick_up_item_method(pick_up_item_answer, current_user, game_match)
	# binding.pry

end
