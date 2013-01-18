require 'sinatra'
require './lib/granny'
enable :sessions

# routes
get '/' do
  session[:granny] ||= Granny.new
  erb :get_granny
end

post '/you_said' do
  params[:sonny_says] == 'BYE' ? session[:BYE] += 1 : session[:BYE] = 0
  session[:BYE] == 3 ? erb( :bye) : erb( :you_said)
end

get '/bye' do
  session[:BYE] = 0
  erb :bye
end
