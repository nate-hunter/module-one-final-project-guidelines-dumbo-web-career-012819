def final_scenario(current_user)

	# def start_final(current_user)
		system "clear"
		puts "You leave the temple grounds and go through the village."
		sleep 1
		puts "You come across the town square, where you see a lone figure in the distance."
		sleep 1
		puts "As you walk up to the figure, he turns around."
		sleep 1
		puts "'So you're the one that's been causing trouble for me.' he says"
		sleep 1
		puts "'It seems the only way to stop you, is for me to take you on myself.'"
		sleep 1
		

	# end
	

    prompt = TTY::Prompt.new
    begin_answer = prompt.select(' ', ["Begin Final Match"])

	# def begin(current_user)
	# 	system "clear"
	# 	puts "You've successfully replenished your health!"

	# 	next_prompt(current_user)
	# end

#################################################
#################################################
#################################################
	
	# def next_prompt(current_user)
	# 	prompt = TTY::Prompt.new
	# 	next_answer = prompt.select(' ', ["Continue moving along"])

	# 	next_method(next_answer, current_user)
	# end

#################################################
#################################################
#################################################

	def start_final_method(start_final_answer, current_user)
		# rps
	end


	start_final(current_user)
end