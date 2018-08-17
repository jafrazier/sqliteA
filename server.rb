require 'sinatra'
require 'sinatra/activerecord'
enable :sessions

set :database, "sqlite3:monkey.sqlite3"

get '/' do
  @users = User.all
  p @users
  erb :home
end

get '/signup' do
  erb :signup
end

post '/signup' do
  p params
  user = User.new(
    email: params['email'],
    full_name: params['full_name'],
    password: params['password']
  )
  user.save
  redirect '/'
end

get '/login' do
  erb :login
end

post '/login' do
  email = params['email']
  given_password = params['password']
  session[:user] = "#{email}"
  user = User.find_by(email: email)
  if user.password == given_password
    session[:user] = "#{email}"
    redirect :account
  else
    p 'invalid'
    redirect '/'
  end
end

get '/account' do
  erb :account
end

get '/logout' do
  session[:user] = nil
  p 'user has been logged out'
  redirect '/'
end




require './models'
