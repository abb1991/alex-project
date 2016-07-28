class Game < ActiveRecord::Base
  has_many :players
  has_many :decks
  has_many :users, through: :player
end
