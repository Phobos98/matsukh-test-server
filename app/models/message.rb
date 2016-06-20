class Message < ActiveRecord::Base

  has_many :devices_messages
end
