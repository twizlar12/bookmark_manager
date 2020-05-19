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

  post "/bookmarks/add" do 
    connection = PG.connect(dbname: 'bookmark_manager')
    @url = params[:url]
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{@url}')")
    redirect '/bookmarks'
  end

  run! if app_file == $0
end