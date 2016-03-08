require 'sinatra'
require 'sinatra/activerecord'
require 'base64'

require './models/upload.rb'

get '/' do
	most_recent_image = Upload.last()
	@image = Base64.encode64(most_recent_image.filecontent) unless most_recent_image.nil?
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

post '/destroy' do
	Upload.last().destroy
end