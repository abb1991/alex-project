class Round < ActiveRecord::Base
    belongs_to :game
    has_many :hands
    belongs_to :deck
    has_many :cards, through: :deck
    has_many :tricks
end
