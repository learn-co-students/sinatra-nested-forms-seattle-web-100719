require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate_name = params["pirate"]["name"]
      @pirate_weight = params["pirate"]["weight"]
      @pirate_height = params["pirate"]["height"]

      @ship_name = params["pirate"]["ships"][0]["name"]
      @ship_type = params["pirate"]["ships"][0]["type"]
      @ship_booty = params["pirate"]["ships"][0]["booty"]

      @ship_name2 = params["pirate"]["ships"][1]["name"]
      @ship_type2 = params["pirate"]["ships"][1]["type"]
      @ship_booty2 = params["pirate"]["ships"][1]["booty"]

      erb :'/pirates/show'
    end




  end
end
