require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:monkey.sqlite3"

get '/' do

  erb :home
end
