require "sinatra"
require './lib/studio_ghibli_api'

class StudioGhibliList < Sinatra::Base

  get '/' do
    @ghibli_films = StudioGhibli.new.films()
    erb :index
  end

  get '/alphabetical' do
    @alpha_ghibli_films = StudioGhibli.new.order_by("title")
    erb :alphabetical
  end

  get '/highestrated' do
    @highest_rated_ghibli_films = StudioGhibli.new.order_by("rt_score")
    erb :highest_rated
  end

  run! if app_file == $0
end
