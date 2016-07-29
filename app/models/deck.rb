class Deck < ActiveRecord::Base
  belongs_to :game
  has_one :round
  has_many :cards

  after_save :make_cards

  def make_cards
    suits = ["Clubs", "Diamonds", "Spades", "Hearts"]
    numbers = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
    pics = [['🃒', '🃓', '🃔', '🃕', '🃖', '🃗', '🃘', '🃙', '🃚', '🃛', '🃝', '🃞', '🃑'], ['🃂', '🃃', '🃄', '🃅', '🃆', '🃇', '🃈', '🃉', '🃊', '🃋', '🃍', '🃎', '🃁'], ['🂢', '🂣', '🂤', '🂥', '🂦', '🂧', '🂨', '🂩', '🂪', '🂫', '🂭', '🂮', '🂡'], ['🂲', '🂳', '🂴', '🂵', '🂶', '🂷', '🂸', '🂹', '🂺', '🂻', '🂽', '🂾', '🂱']]

    4.times do |suit_index|
    suit = suits[suit_index]
      13.times do |card_index|
        number = numbers[card_index]
        if (suit == "Spades" && number == "Queen")
          card = Card.create(suit: suit, number: number, deck_id: self.id, point_value: 13)
        elsif (suit == "Hearts")
          card = Card.create(suit: suit, number: number, deck_id: self.id, point_value: 1)
        else
          card = Card.create(suit: suit, number: number, deck_id: self.id, point_value: 0)
        end
        card.card_pic = pics[suit_index][card_index]
        card.save
      end
    end
  end

end
