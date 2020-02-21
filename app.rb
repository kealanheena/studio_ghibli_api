require "sinatra"
require './lib/studio_ghibli_api'

class StudioGhibliList < Sinatra::Base

  get '/' do
    @ghibli_films = StudioGhibli.new.films()
    erb :index
  end

  run! if app_file == $0
end
