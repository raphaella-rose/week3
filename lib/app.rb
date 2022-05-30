require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello, world!'
end

get '/cat' do
  @cat_names = ["Amigo", "Misty", "Almond"].sample()
  erb(:index)
end