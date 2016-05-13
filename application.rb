# set environment
ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
require 'bundler/setup'
require 'sinatra/reloader'

Bundler.require(:default, ENV['RACK_ENV'])

class Application < Sinatra::Base
  configure do
    set :assets_precompile, %w(application.js application.css *.png *.jpg *.svg *.eot *.ttf *.woff)
    set :assets_css_compressor, :sass
    set :assets_js_compressor, :uglifier

    register Sinatra::AssetPipeline

    set :server, ['thin']

    # Actual Rails Assets integration, everything else is Sprockets
    if defined?(RailsAssets)
      RailsAssets.load_paths.each do |path|
        settings.sprockets.append_path(path)
      end
    end
  end

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end
end
