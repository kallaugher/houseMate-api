 module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate

      def create
        # we had to change the line below, as there was no id in the params
        user = User.find_by(email: auth_params[:email])
        if user.authenticate(auth_params[:password])
          jwt = Auth.issue({user: user.id})
          render json: {jwt: jwt, current_user: user}
        else
          render json: user.errors, status: 404
        end
      end

      private

      def auth_params
        params.require(:auth).permit(:email, :password)

        # for stubbing tests was using
        # params.require(:params).permit(:email, :password)
      end
    end
  end
end
