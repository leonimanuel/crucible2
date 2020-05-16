# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end
module CrucibleApp2
  # binding.pry
  class Application < Rails::Application
  #   #.....
  #   config.enable_dependency_loading = true
		config.autoload_paths << Rails.root.join('lib')
    # config.eager_load_paths << Rails.root.join('lib/json_web_token.rb')
    #.....
    # binding.pry
  end
 end