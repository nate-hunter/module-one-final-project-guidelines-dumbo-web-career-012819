class Match < ActiveRecord::Base
  belongs_to :users
  belongs_to :opponents

  # def update_game_points(current_user)
  #   points = current_user.health
  # end

end
