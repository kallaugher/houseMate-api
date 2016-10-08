module Api
  module V1
    class EventsController < ApplicationController
       skip_before_action :authenticate

      def index
        render json: Event.all
      end

      def show
        render json: Event.find(params[:id])
      end

      def create
        event = Event.new(event_params)
        event.group_id = Group.first.id
        event.created_by = User.first.id

        if event.save
          render json: event
        else
          render json: event.errors, status: 500
        end
      end

      def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: Event.all
      end
      private

      def event_params
        params.require(:event).permit(:name, :category, :created_by, :group_id)
      end
    end
  end
end
