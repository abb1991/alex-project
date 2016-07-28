get '/games/new' do
  game = Game.create
  redirect "/players/#{game.id}"
end
