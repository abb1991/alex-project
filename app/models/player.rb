class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  belongs_to :deck
  has_many :cards, through: :game
end
