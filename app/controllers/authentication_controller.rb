class AuthenticationController < ApplicationController
 # skip_before_action :authenticate_request

 def authenticate
   command = AuthenticateUser.call(params[:email], params[:password])
   # binding.pry

   if command.success?
     # binding.pry
     render json: { auth_token: command.result, user_name: User.find_by(email: params[:email]).name }
   else
     render json: { error: command.errors }, status: :unauthorized
   end
 end
end