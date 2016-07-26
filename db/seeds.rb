deck = Deck.create
game = Game.create

suits = ["Clubs", "Diamonds", "Spades", "Hearts"]
values = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]


4.times do |suit_index|
  suit = suits[suit_index]
  13.times do |card_index|
    card = values[card_index]
    Card.create(suit: suit, value: card, deck_id: deck.id)
  end
end

4.times do |num|
  name = "User #{num}"
  user = User.create(username: name, password: "test")
  Player.create(user_id: user.id, game_id: game.id, deck_id: deck.id)
end


