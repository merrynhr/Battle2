require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
$variable = {}

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $variable[:p1_name] = Player.new(params[:p1_name]).name
    $variable[:p2_name] = Player.new(params[:p2_name]).name
    redirect '/play'
  end

  get '/play' do
    @p1_name = $variable[:p1_name]
    @p2_name = $variable[:p2_name]
    erb(:play)
  end

  post '/attack' do
    @p1_name = $variable[:p1_name]
    @p2_name = $variable[:p2_name]
    erb(:attack)
  end

  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
