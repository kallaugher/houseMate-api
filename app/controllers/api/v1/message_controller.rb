module Api
  module V1
    class MessagessController < ApplicationController
      #  skip_before_action :authenticate

      def index
        render json: Message.where(group_id: current_user.group_id)
      end

      def show
        render json: Message.find(message_params[:id])
      end

      def create
        message = Message.new(message_params)
        message.group_id = current_user.group_id
        event.user_id = current_user.id

        if event.save
          render json: message
        else
          render json: message.errors, status: 500
        end
      end

      def destroy
        message = Message.find(message_params[:id])
        message.destroy
        render json: Message.where(group_id: current_user.group_id)
      end

      private

      def message_params
        params.require(:message).permit(:content)
      end
    end
  end
end
