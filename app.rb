require "sinatra"
require './lib/studio_ghibli_api'

class StudioGhibliList < Sinatra::Base

  get '/' do
    @ghibli_films = StudioGhibli.new.films()
    erb :index
  end

  get '/alphabetical' do
    @alpha_ghibli_films = StudioGhibli.new.sort_by_title
    erb :alphabetical
  end

  run! if app_file == $0
end
