require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :views/user_input
  end

  post '/piglatinize' do
    @output = PigLatinizer.new(params[:user_input])
    erb :views/output
  end
end
