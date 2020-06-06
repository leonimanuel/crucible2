class UsersController < ApplicationController
	def show
		# binding.pry
		user = User.find_by(name: params[:id])
		render json: UserSerializer.new(user).to_serialized_json
	end
end
