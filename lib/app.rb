require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello, world!'
end

get '/cat' do
  "<div>
    <img src='https://i.imgur.com/jFaSxym.png'>
  </div>
  "
end