class DevicesMessage < ActiveRecord::Base
  belongs_to :device
  belongs_to :message
end
