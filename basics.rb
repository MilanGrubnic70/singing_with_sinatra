require 'rubygems'
require 'sinatra'

get '/' do
	"Hello World!"
end

get '/about' do
	'A little about me.'
end

get '/about' do
	"I'm Milan Grubnic"
end

get '/hello/:name/:city' do
	"Hello there, #{params[:name].capitalize} from #{params[:city].capitalize}."
end

get '/more/*' do
	params[:splat]
end

get '/form' do
	erb :form
end

post '/form' do
	"You entered '#{params[:message]}'."
end

get '/secret' do
	erb :secret
end

post '/secret' do
	params[:secret].reverse
end

get '/decrypt/:secret' do
	params[:secret].reverse
end

not_found do
	status 404
	'NOT FOUND'
end