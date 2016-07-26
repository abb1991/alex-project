class Round < ActiveRecord::Base
    belongs_to :game
    has_many :hands
    has_one :deck
    has_many :cards, through: :deck
end
