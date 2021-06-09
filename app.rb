require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  # app code here
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Battle!'
  end

end
