module Api
  module V1
    class SessionsController < ApplicationController
      skip_before_action :authenticate

      def create
        # we had to change the line below, as there was no id in the params
        user = User.find_by(email: auth_params[:email])
        if user && user.authenticate(auth_params[:password])
          jwt = Auth.issue({user: user.id})
          render json: {jwt: jwt}
        else
          render json: {error: "Could not authenticate that user."}
        end
      end

      private

      def auth_params
        params.require(:params).permit(:email, :password)
        # params.require(:auth).permit(:email, :password)
        # for sake of stubbing tests now - change all params later to auth_params
      end
    end
  end
end
