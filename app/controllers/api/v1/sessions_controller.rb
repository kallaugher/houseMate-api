 module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate

      def create
        user = User.find_by(email: auth_params[:email])
        if user && user.authenticate(auth_params[:password])
          jwt = Auth.issue({user: user.id})
          render json: {jwt: jwt}
        else
          # render json:
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
