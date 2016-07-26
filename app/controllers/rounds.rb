get '/rounds/:id/new' do
  @game = Game.find(params[:id])
  @players = Player.all.where(game_id: @game.id)
  @round = Round.create(game_id: params[:id])
  @deck = Deck.create(game_id: @game.id, round_id: @round.id)
  @players.each do |player|
    Hand.create(player_id: player.id, round_id: @round.id, game_id: @game.id)
  end
  # the nonsense is happening in here
    erb :'games/show'
end
