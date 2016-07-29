get '/play/:id' do
  card = Card.find(params[:id])
  card.played = true
  card.save
  @game = Game.find(card.deck.game_id)
  @round = Round.all.where(game_id: @game.id).last
  @players = Player.all.where(game_id: @game.id)
  @deck = @game.decks.last
  @trick = Trick.all.where(round_id: @round.id).last
  card.trick_id = @trick.id
  card.save
  @played_cards_total = Card.all.where(deck_id: @deck.id, played: true).length
  if @played_cards_total%4 == 0
    @trick.winning_player
    if @played_cards_total != 52
      @trick = nil
      Trick.create(round_id: @round.id)
    end
  end
  erb :'games/show'
end
