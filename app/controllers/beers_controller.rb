class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beers = Unirest.get("http://localhost:3000/beers.json").body
    render :new
  end

  def create
    @beer = Unirest.post("http://localhost:3000/beers.json", :headers => {"Accept"=> "application/json"}, :parameters => {:name => params[:name], :style => params[:style], :hop=> params[:hop], :yeast => params[:yeast], :malts => params[:malts], :ibu => params[:ibu], :alcohol => params[:alcohol], :blg => params[:blg]}).body
    redirect_to "/beers/#{@beer['id']}"
  end

   def edit
    @beer = Unirest.get("http://localhost:3000/beers/#{params[:id]}.json").body
  end

  def update
    @beer = Unirest.patch("http://localhost:3000/beers/#{params[:id]}.json", :headers => {"Accept"=> "application/json"}, :headers => {"Accept"=> "application/json"}, :parameters => {:name => params[:name], :style => params[:style], :hop=> params[:hop], :yeast => params[:yeast], :malts => params[:malts], :ibu => params[:ibu], :alcohol => params[:alcohol], :blg => params[:blg]}).body
    redirect_to "/beers/#{@beer['id']}"
  end

  def destroy
    Unirest.delete("http://localhost:3000/beers/#{params[:id]}.json").body
    redirect_to "/beers"
  end
end