require 'sinatra'
require 'sinatra/activerecord'
require 'base64'

require './models/upload.rb'

get '/' do
	@most_recent_image = Upload.last()
	erb :index
end

post '/upload' do
	file = params[:file]
	Upload.create(
		filename: file[:filename],
		filecontent: File.open(file[:tempfile], 'rb').read
		) unless file.nil?
	redirect '/'
end

get '/image' do
	content_type 'image/gif'
	Upload.find(params[:id].to_i).filecontent
end

post '/destroy' do
	Upload.last().destroy
end