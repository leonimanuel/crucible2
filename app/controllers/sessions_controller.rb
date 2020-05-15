class SessionsController < ApplicationController
	def login
		render "login"
	end

	def create_login
		binding.pry
  	if user = User.find_by(email: params[:email])
			if user.authenticate(params[:password])
				session[:user_id] = user.id
				binding.pry
				redirect_to user_path(user)
			else
				user.errors.add(:password, "Email and password do not match")
				cookies[:invalid_login] = true
				flash[:invalid_login] = "#{user.errors[:password][0]}"
				redirect_to "/login"
			end
		else	
			cookies[:invalid_login] = true
			if params[:email].empty?
				flash[:invalid_login] = "Email cannot be empty"
			else
				flash[:invalid_login] = "Email and password do not match"
			end
			redirect_to "/login"
		end
	end
end
