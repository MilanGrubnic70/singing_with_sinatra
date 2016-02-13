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

get '/hello/:name' do
	params[:name]
end