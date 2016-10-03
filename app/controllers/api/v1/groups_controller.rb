module Api
  module V1
    class GroupsController < ApplicationController
      skip_before_action :authenticate

      def index
        render json: Group.all
      end

      def show
        render json: Group.find(params[:id])
      end
    end
  end
end
