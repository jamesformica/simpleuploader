source 'https://rubygems.org'

# Need to get the latest (1.4.6) Sinatra from git to resolve a bug
# Bug: https://gist.github.com/celsoMartins/9b9935c07eaaa334d346
# Fixing Commit: https://github.com/sinatra/sinatra/commit/b39d72d2a5b824b5f607b7825c4b076f527461a1

ruby '2.0.0'

gem 'sinatra', '1.4.6'

gem 'sinatra-activerecord', '2.0.4'

gem 'sass'

gem 'time_difference'

group :development do
	gem 'sqlite3', '1.3.10'
end

group :production do
	gem 'pg', '0.17.1'
end