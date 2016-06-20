class CreateDevicesMessages < ActiveRecord::Migration
  def change
    create_table :devices_messages do |t|
      t.references :device, index: true, foreign_key: true
      t.references :message, index: true, foreign_key: true
      t.datetime :read_at

      t.timestamps null: false
    end
  end
end
