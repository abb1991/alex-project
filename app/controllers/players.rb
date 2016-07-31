get '/players/:id' do
  p_1 = Player.new(game_id: params[:id], user_id: 1, color: 'red' )
  p_2 = Player.new(game_id: params[:id], user_id: 2, color: 'blue' )
  p_3 = Player.new(game_id: params[:id], user_id: 3, color: 'green' )
  p_4 = Player.new(game_id: params[:id], user_id: 4, color: 'orange')
  if p_1.save && p_2.save && p_3.save && p_4.save
    redirect "/rounds/#{params[:id]}/new"
  else
    'errors'
  end
end
