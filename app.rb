require 'sinatra/base'
require './lib/bookmark'
require './database_connection_setup'
require 'uri'
require 'sinatra/flash'

class App < Sinatra::Base
  enable :sessions, :method_override

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
    if params['url'] =~ /\A#{URI::regexp(['http', 'https'])}\z/
      Bookmark.create(url: params['url'], title: params[:title])
    else
      flash[:notice] = "You must submit a valid URL."
    end
    
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/edit' do
    @bookmark = Bookmark.find(id: params[:id])
    erb :'bookmarks/edit'
  end
  
  patch '/bookmarks/:id' do
    Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
