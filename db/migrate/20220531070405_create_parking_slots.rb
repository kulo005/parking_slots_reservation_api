class CreateParkingSlots < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_slots do |t|
      t.boolean :empty
      t.boolean :forDisabled
      t.integer :position

      t.timestamps
    end
  end
end
