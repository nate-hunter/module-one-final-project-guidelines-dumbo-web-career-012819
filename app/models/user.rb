class User < ActiveRecord::Base
  has_many :matches
  has_many :opponents, through: :matches

  # def game_rules
  #   {
  #     'Rock': "Scissors",
  #     'Paper': "Rock",
  #     'Scissors': "Paper"
  #   }
  # end

  # def rsp_match(guess)
  #   opponent_guesses = ["Rock", "Paper", "Scissors"]
  #   opp_guess = opponent_guesses.sample
  #
  #   if game_rules[opp_guess.to_sym] == guess
  #     puts 'opponent wins'
  #   elsif game_rules[guess.to_sym] == opp_guess
  #     puts '#{self.name} wins'
  #   else
  #     puts 'tie game'
  #   end
  # end
end
