class User < ActiveRecord::Base
  has_many :matches
  has_many :opponents, through: :matches

  def score(match_points=0)
    health = self.health
    attack = self.attack
    defense = self.defense
    self.total_score = health + attack + defense + match_points
    self.total_score
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
