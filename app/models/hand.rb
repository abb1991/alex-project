class Hand < ActiveRecord::Base
  belongs_to :player
  belongs_to :game
  belongs_to :round
  has_many :cards

  after_save :deal_hand

  def deal_hand
    deck = Deck.find_by(round_id: self.round_id)
    cards = deck.cards
    13.times do
      begin
        card = cards.sample
      end until card.hand_id.nil?
      card.hand_id = self.id
      card.save
    end
  end

  def pick_card
  end

end
