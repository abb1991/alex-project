class Deck < ActiveRecord::Base
  belongs_to :game
  has_one :round
  has_many :cards

  after_save :make_cards

  def make_cards
    suits = ["Clubs", "Diamonds", "Spades", "Hearts"]
    values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
    4.times do |suit_index|
      suit = suits[suit_index]
      13.times do |card_index|
        card = values[card_index]
        Card.create(suit: suit, value: card, deck_id: self.id)
      end
    end
  end

end
