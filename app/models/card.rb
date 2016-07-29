class Card < ActiveRecord::Base
  belongs_to :deck
  belongs_to :trick
  belongs_to :hand
  belongs_to :player
end
