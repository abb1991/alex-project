get '/games/new' do
  game = Game.create
  Deck.create(game_id: game.id)
  redirect "/players/#{game.id}"
end
