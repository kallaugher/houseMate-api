module Api
  module V1
    class UsersController < ApplicationController
      # before_action :authenticate

      def index
        render json: User.where(group_id: current_user.group_id)
      end

      def show
        render json: User.find(params[:id])
      end

      def create
       render json: {success: "User successfully created"}
      end
    end
  end
end


