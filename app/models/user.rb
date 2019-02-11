class User < ActiveRecord::Base
  has_many :matches
  has_many :opponents, through: :matches


end
