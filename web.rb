require 'sinatra'
require 'sinatra/activerecord'

require './models/upload.rb'

get '/' do
	@most_recent_image = Upload.last()
	erb :index
end

post '/upload' do
	file = params[:file]
	real_file = File.open(file[:tempfile], 'rb')
	size = (File.size(real_file).to_f / 2**20).round(2)

	upload = Upload.create(filename: file[:filename], filecontent: real_file.read, size: size) unless file.nil?
	redirect "/#{upload.id}"
end

get '/image' do
	content_type 'image/gif'
	Upload.find(params[:id].to_i).filecontent
end

post '/destroy' do
	Upload.last().destroy
end