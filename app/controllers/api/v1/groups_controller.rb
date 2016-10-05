module Api
  module V1
    class GroupsController < ApplicationController
      # before_action :authenticate
      def create
        render json: {success: "Group successfully created"}
      end

      def index
        render json: Group.all
      end

      def show
        render json: Group.find(params[:id])
      end
    end
  end
end
