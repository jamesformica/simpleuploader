require 'sass/plugin/rack'
require './web'

Sass::Plugin.options[:style] = :compressed
Sass::Plugin.options[:css_location] = "./public"
use Sass::Plugin::Rack

run Sinatra::Application