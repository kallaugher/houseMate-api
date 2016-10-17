module Api
  module V1
    class EventsController < ApplicationController
      # skip_before_action :authenticate

      def index
        render json: Event.where(group_id: current_user.group_id)
      end

      def show
        render json: Event.find(params[:id])
      end

      def create
        event = Event.new
        event.name = event_params["name"]
        event.category = event_params["category"]
        event.start_time = event_params["start_time"]
        event.end_time = event_params["end_time"]
        event.group_id = current_user.group_id
        event.created_by = current_user.id
        event.save

        if event_params["assigned_to"]
          Assignment.create(event_id: event.id, user_id: event_params["assigned_to"])
        end

        if event.id
          render json: event
        else
          render json: event.errors, status: 500
        end
      end

      def update
        event = Event.find(params[:id])

         event.update(event_params)
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
        params.require(:event).permit(:name, :category, :created_by, :group_id, :start_time, :end_time, :status, :amount, :assigned_to)
      end
    end
  end
end
