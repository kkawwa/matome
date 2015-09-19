require 'sinatra'
require 'sinatra/reloader'
require 'rss'

get '/' do
  @rss = RSS::Parser.parse("http://b.hatena.ne.jp/hotentry.rss")
  erb :index
end