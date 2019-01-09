require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @converted = PigLatinizer.new.piglatinize(params["input"])
    erb :display
  end

end
