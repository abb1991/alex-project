This is a Hearts application built with a ruby back-end using the Sinatra framework. The game is built with custom card and game logic, so that a user can only play a card which is a legal play in traditional Hearts. 

setup: 
`git clone https://github.com/abb1991/alex-project`

`bundle install`

`be rake db:create`

`be rake db:migrate`

`be rake db:seed`

If you don't have shotgun installed, do: 

`gem install shotgun`

`bundle install`

Then to start your local server:

`shotgun`

Now go to localhost:9393 in your browser and enjoy the game!
