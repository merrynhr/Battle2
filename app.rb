require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p @p1_name = params[:p1_name]
    p @p2_name = params[:p2_name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end