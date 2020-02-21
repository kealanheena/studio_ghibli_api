require 'rubygems'
require 'httparty'

class StudioGhibli
  include HTTParty
  base_uri "https://ghibliapi.herokuapp.com/"

  def films(film_id = nil)
    self.class.get("/films/#{film_id}")
  end

  def order_by(order)
    return films.sort_by { |k| k[order] } if order == "title"
    
    films.sort_by { |k| k[order].to_i }
  end
end
