Rails.application.routes.draw do
  namespace :api do
    get '/name_upper_url' => 'games#name_upper'
    get '/name_url' => 'games#name_game'
    get '/game_url' => 'games#game_guess'

    get '/name_upper_url/:name' => 'games#name_upper_new'
    get '/name_url/:name' => 'games#name_game_new'
    get '/game_url/:guess' => 'games#game_guess_new'

    post '/upper_url' => 'games#name_upper_secret'
    post '/url_name' => 'games#name_game_secret'
    post '/url_game' => 'games#game_guess_secret'

  end
end
