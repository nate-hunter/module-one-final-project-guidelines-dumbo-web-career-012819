class User < ActiveRecord::Base
  has_many :matches
  has_many :opponents, through: :matches

  def score(game_points=0)
    score = self.health + self.attack + self.defense + game_points
    score
  end

  def update_score(score)
    self.update(total_score: score)
  end

  def self.highest_score
    maximum('total_score')
  end

  def self.user_with_highest_score
    where("total_score = ?", self.highest_score).first
  end

  def self.worthy_users
    where('total_score > ?', 100)
  end

end
