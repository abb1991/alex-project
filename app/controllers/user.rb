get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new(username: params[:username], password: params[:password])
  if user.save
    redirect '/'
  else
    "errors"
  end
end
