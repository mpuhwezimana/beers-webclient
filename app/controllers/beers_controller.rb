class BeersController < ApplicationController

  def index
    @beers = Unirest.get("http://localhost:3000/beers.json").body
  end

  def show
    @beer = Unirest.get("http://localhost:3000/beers/#{params[:id]}.json").body 
  end
end
