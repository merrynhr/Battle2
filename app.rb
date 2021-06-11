require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p1_name = Player.new(params[:p1_name])
    p2_name = Player.new(params[:p2_name])
    $game = Game.new(p1_name, p2_name)
    redirect '/play'
  end

  get '/play' do
    # @p1_name = $p1_name
    # @p2_name = $p2_name
    @game = $game
    erb(:play)
  end

  post '/attack' do

    # @p1_name = $p1_name
    # @p2_name = $p2_name
    @game = $game
    @game.attack(@game.player_2)
    #Game.new.attack(@p2_name)
    erb(:attack)
  end
  
  
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
