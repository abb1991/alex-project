class Player < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  belongs_to :deck
  has_many :cards, through: :game

  def total_points
    tricks = Trick.all.where(player_id: self.id)
    points = tricks.map do |trick|
      cards = trick.cards
    end
    points.each do |point_arr|
      return point_arr.reduce(0) { |sum, card| sum +  card.point_value}
    end
  end

end
