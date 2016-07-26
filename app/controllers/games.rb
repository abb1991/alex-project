get '/games/new' do
  game = Game.create
  redirect "/players/#{game.id}"
end

get '/games/:id' do
  @game = Game.find(params[:id])
  @players = Player.all.where(game_id: @game.id)
  @deck = Deck.first.cards.shuffle
  erb :'games/show'
end
