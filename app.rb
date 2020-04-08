require 'sinatra/base'
require './lib/bookmark'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

# start the server if ruby file executed directly
  run! if app_file == $0
end
