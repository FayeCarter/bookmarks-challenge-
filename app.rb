require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @new_bookmark = Bookmark.new
    @add_bookmark = @new_bookmark.all
    erb :bookmarks
  end

# start the server if ruby file executed directly
  run! if app_file == $0
end
