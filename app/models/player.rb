class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  belongs_to :deck
  has_many :cards, through: :game, :source => 'Card'

  def total_points
    tricks = Trick.all.where(player_id: self.id)
    points = tricks.map do |trick|
      cards = trick.cards
    end
    total_points = 0
    points.each do |point_arr|
      total_points += point_arr.reduce(0) { |sum, card| sum +  card.point_value}
    end
    return total_points
  end

end
