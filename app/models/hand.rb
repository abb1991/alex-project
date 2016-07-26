class Hand < ActiveRecord::Base
  belongs_to :player
  belongs_to :game
  belongs_to :round
  has_many :cards, through: :deck
end
