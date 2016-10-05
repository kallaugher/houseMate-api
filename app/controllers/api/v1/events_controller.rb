module Api
  module V1
    class EventsController < ApplicationController
      #before_action :authenticate

      def create
        render json: {success: "Event successfully created"}
      end

      def index
        render json: Event.all
      end

      def show
        render json: Event.find(params[:id])
      end
    end
  end
end
