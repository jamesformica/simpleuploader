require 'sinatra'
require 'sinatra/activerecord'
require 'base64'

require './models/upload.rb'

get '/' do
	@image = Base64.encode64(Upload.last().filecontent)
	erb :index
end

post '/upload' do
	file = params[:file]
	Upload.create(
		filename: file[:filename],
		filecontent: File.open(file[:tempfile], 'rb').read
		)
	redirect '/'
end