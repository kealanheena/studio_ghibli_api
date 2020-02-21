require 'rubygems'
require 'httparty'

class StudioGhibli
  include HTTParty
  base_uri "https://ghibliapi.herokuapp.com/"

  def films(film_id = nil)
    self.class.get("/films/#{film_id}")
  end

  def sort_by_title
    films.sort_by { |k| k["title"] }
  end
end
