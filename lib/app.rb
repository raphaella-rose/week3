require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello, world!'
end

get '/random_cat' do
  @cat_names = ["Amigo", "Misty", "Almond"].sample()
  erb(:index)
end

post '/named_cat' do
  p params
  @cat_names = params[:name]
  erb(:cat_reveal)
end

get '/name_cat' do
  erb(:index)
end

