class Beer

  attr_accessor :name, :style, :hop, :yeast, :malts, :ibu, :alcohol, :blg

  def initialize(hash)
    @name = hash['name']
    @style = hash['style']
    @hop = hash['hop']
    @yeast = hash['malts']
    @malts = hash['ibu']
    @ibu = hash['ibu']
    @alcohol = hash['alcohol']
    @blg = hash['blg']
  end

  def self.all
    beer_hash = Unirest.get("http://localhost:3000/beers.json").body
    beers = []
    beer_hash.each do [beer_hash]
      beers << Beer.new(beer_hash)
    end 
    return beers
  end

  def self.find(id)
    beer_hash = Unirest.get("http://localhost:3000/beers/#{id}.json").body
    Beer.new(beer_hash)
  end
end 