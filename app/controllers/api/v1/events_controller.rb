module Api
  module V1
    class EventsController < ApplicationController
      #  skip_before_action :authenticate

      def index
        render json: Event.where(group_id: current_user.group_id)
      end

      def show
        render json: Event.find(params[:id])
      end

      def create
        event = Event.new(event_params)
        event.group_id = current_user.group_id
        event.created_by = current_user.id

        if event.save
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
<<<<<<< HEAD
        params.require(:event).permit(:name, :category, :created_by, :group_id, :status, :end_time)
=======
        params.require(:event).permit(:id, :name, :category, :created_by, :group_id, :status, :amount)
>>>>>>> 5fe1f461ebbe7c2bb019e3b1a6176817cc9562b8
      end
    end
  end
end
