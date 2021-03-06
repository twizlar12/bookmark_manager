require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = BookMarks.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do 
    erb :'bookmarks/new'
  end

  post "/bookmarks" do 
    @url = params[:url]
    @title = params[:title]
    BookMarks.add(url: @url, title: @title)
    redirect '/bookmarks'
  end

  run! if app_file == $0
end