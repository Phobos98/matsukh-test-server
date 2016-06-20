class Device < ActiveRecord::Base

  has_many :devices_messages

  validates :model, presence: true
  validates :platform, presence: true
  validates :uuid, presence: true, uniqueness: true
  validates :version, presence: true
  validates :manufacturer, presence: true
  validates :serial, presence: true
end
