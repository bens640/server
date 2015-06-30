require 'sinatra'
require 'httparty'
require 'nokogiri'
require './public/stock_picker.rb'





	get '/' do
		stock = Stocker.new
		stock.printout
		# redirect '/hello_world.html'
end
#
# get '/blah' do
# 	"Hello World"
# end