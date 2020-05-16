class ApplicationController < ActionController::API
	before_action :authenticate_request
  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
	# # enable :sessions

	# config.middleware.insert_before 0, Rack::Cors do
	#   allow do
	#       origins '*'
	#       resource '*', headers: :any, methods: [:get, :post, :options]
	#   end
	# end
end
