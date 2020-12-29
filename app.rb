require_relative 'config/environment'

class App < Sinatra::Base

 get "/" do
  erb :user_input 
 end

 post "/piglatinize" do
  @cool = PigLatinizer.new(params[:word])

  erb :thing
end
end