require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmark' do
    @bookmark = BookMarks.new
    @bookmark.list << "hello"
    erb :bookmarks
  end

  run! if app_file == $0
end