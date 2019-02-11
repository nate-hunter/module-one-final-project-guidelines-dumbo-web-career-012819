class Match < ActiveRecord::Base
  belongs_to :users
  belongs_to :opponents
end
