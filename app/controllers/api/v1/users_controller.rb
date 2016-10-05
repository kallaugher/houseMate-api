module Api
  module V1
    class UsersController < ApplicationController
      # before_action :authenticate

      def create
       render json: {success: "User successfully created"}
      end

      def index
        render json: User.all
      end

      def show
        render json: User.find(params[:id])
      end
    end
  end
end
