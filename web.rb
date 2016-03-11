require 'sinatra'
require 'sinatra/activerecord'
require './helpers/date_helper.rb'
require './models/upload.rb'

get '/' do
	@images = Upload.order(created_at: :desc)
	erb :index
end

post '/upload' do
	file = params[:file]
	real_file = File.open(file[:tempfile], 'rb')
	size = (File.size(real_file).to_f / 2**20).round(2)

	upload = Upload.create(filename: file[:filename], filecontent: real_file.read, size: size) unless file.nil?
	redirect '/'
end

get '/image' do
	content_type 'image/gif'
	Upload.find(params[:id].to_i).filecontent
end

post '/destroy' do
	Upload.find(params[:id].to_i).destroy
end