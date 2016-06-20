module Api
  module V1
    class BaseController < ApplicationController

      before_filter :check_authorization_header
      before_filter :check_device_headers

      private
      def check_authorization_header

        client_id = "ee11cbb19052e40b07aac0ca060c23ee"
        client_secret = "5ebe2294ecd0e0f08eab7690d2a6ee69"

        if request.headers['Authorization'] != "Basic #{Base64.encode64("#{client_id}:#{client_secret}")}".gsub("\n", "")

          render json: {}, status: 401
        end

      end

      def check_device_headers
        if request.headers['X-Device-UUID'] && request.headers['X-Device-UUID'].length > 0
          @device = Device.create_with({
              model: request.headers['X-Device-Model'],
              platform: request.headers['X-Device-Platform'],
              version: request.headers['X-Device-Version'],
              manufacturer: request.headers['X-Device-Manufacturer'],
              serial: request.headers['X-Device-Serial'],
            }).find_or_create_by({uuid: request.headers['X-Device-UUID']})

          @device = nil unless @device.valid?
        end
      end
    end
  end
end