
      # current_user.health -= opponent.attack
      # opponent.health -= current_user.attack

# def sandbox
    


# 	opponent = Opponent.find_by(name: "Soldier Geoff")

#     until current_user.health >= 0 || opponent.health >= 0

#     puts "Select your weapon. Rock, paper or scissors?"

#     current_user_choice = gets.chomp.downcase
#     opponent_choice = ["rock", "paper", "scissors"].sample

#     #current_user wins
#     if (current_user_choice == "rock" && opponent_choice == "scissors") || (current_user_choice == "scissors" && opponent_choice == "paper") || (current_user_choice == "paper" && opponent_choice == "rock")
#         p "You won!"
#         # current_userScore += 1
#         opponent.health -= (current_user.attack - opponent.defense)
#         opponent.save

#     #draws
#     elsif (current_user_choice == "rock" && opponent_choice == "rock") || (current_user_choice == "paper" && opponent_choice == "paper") || (current_user_choice == "scissors" && opponent_choice == "scissors")
#         p "Draw! No point awarded"

#     #opponentuter wins
#     else 
#     	# opponentScore += 1
#         p "You lose."   
#         current_user.health -= (opponent.attack - current_user.defense)
#         current_user.save
#     end

#     # #Resulted Scores
#     # p "current_user Score: #{current_userScore}"
#     # p "opponentuter Score: #{opponentScore}"

#     #Resulted Choices
#     p "current_user chose: #{current_user_choice}"
#     p "Opponent chose: #{opponent_choice}"
# end
#     #Tell who wins
#     p opponent.health <= 0 ? ("You win!").upcase : ("#{opponent.name} wins!.").upcase
	

# end