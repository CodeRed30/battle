require 'sinatra'

configure do
  enable :sessions
  set :session_secret, "super_secret"
end

get '/' do
  "Hello Joe"
end

get '/secret' do
  "What are you doing here?"
end

get '/random-cat' do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @cat_name = params[:name]
  erb(:index)
end
