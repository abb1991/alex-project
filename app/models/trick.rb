class Trick < ActiveRecord::Base
  has_many :cards
  belongs_to :user
  belongs_to :round

  def winning_player
    numbers = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
    cards = self.cards
    cards = cards.sort {|a, b| a.updated_at <=> b.updated_at}
    trick_lead = cards[0]
    cards[1..3].each do |card|
      if card.suit == trick_lead.suit
        if numbers.index(card.number) > numbers.index(trick_lead.number)
          trick_lead = card
        end
      end
    end
    self.player_id = Hand.find(trick_lead.hand_id).player_id
    self.save
  end

end
