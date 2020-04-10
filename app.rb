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

  post '/add' do
    redirect '/add_bookmark'
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/view' do
    redirect '/bookmarks'
  end
  
  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  post '/delete' do
    redirect '/delete'
  end
  
  get '/delete' do
    erb :delete
  end

  run! if app_file == $0
end
