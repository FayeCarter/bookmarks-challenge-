require 'sinatra/base'
require './lib/bookmark'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :view_bookmarks
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/bookmarks' do
    Bookmark.create(url: param[:url], title: params[:title])
    redirect '/bookmarks'
  end

# start the server if ruby file executed directly
  run! if app_file == $0
end
