require 'sinatra'
require './lib/granny'
enable :sessions

# routes
get '/' do
  session[:granny] ||= Granny.new
  erb :get_granny
end

post '/you_said' do
  sonny_said_bye
  goodbye_or_continue
end

get '/bye' do
  session[:BYE] = 0 && session[:granny] = nil
  erb :bye
end


def sonny_said_bye
  params[:sonny_says] == 'BYE' and increment_bye or reset_bye
end
def goodbye_or_continue
 session[:BYE] == 3 and erb( :bye) or erb( :you_said)
end
def increment_bye
  session[:BYE] and session[:BYE] += 1 
end
def reset_bye
  session[:BYE] = 0
end
