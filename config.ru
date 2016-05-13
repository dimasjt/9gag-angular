require_relative 'application'

# map '/assets' do
#   environment = Sprockets::Environment.new
#   environment.append_path "assets/js"
#   environment.append_path "assets/css"

#   run environment
# end

map '/' do
  run Application
end
