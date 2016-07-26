class Game < ActiveRecord::Base
  has_many :players
  has_one :deck
  has_many :users, through: :player
end
