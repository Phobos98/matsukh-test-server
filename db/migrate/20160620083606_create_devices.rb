class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :model
      t.string :platform
      t.string :uuid
      t.string :version
      t.string :manufacturer
      t.string :serial

      t.timestamps null: false
    end
  end
end
