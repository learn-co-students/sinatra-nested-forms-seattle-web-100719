require './environment'
require 'rake'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      "Welcome to the Nested Forms Lab!"
    end 

    get '/new' do
      erb :'pirates/new'
    end 

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      @ship1 = Ship.new(params[:pirate][:ships][0][:name], params[:pirate][:ships][0][:type], params[:pirate][:ships][0][:booty])
      @ship2 = Ship.new(params[:pirate][:ships][1][:name], params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])

      erb :'pirates/show'
    end 

  end
end
