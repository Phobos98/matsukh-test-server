module Api
  module V1
    class MessagesController < BaseController

      def index

        if @device.nil?
          render json: { items: Message.all }
        end
      end
    end
  end
end