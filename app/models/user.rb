class User < ActiveRecord::Base
  has_many :games, through: :player
  has_secure_password
end
