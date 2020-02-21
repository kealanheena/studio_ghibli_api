require 'rubygems'
require 'httparty'

class StudioGhibli
  include HTTParty
  base_uri "https://ghibliapi.herokuapp.com/"

  def films(film_id = nil)
    self.class.get("/films/#{film_id}")
  end
end

studio_ghibli = StudioGhibli.new
# puts studio_ghibli.films
