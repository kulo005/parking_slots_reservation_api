class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
      t.integer :NumberOfSlots
      t.string :city
      t.string :street
      t.string :addressNumber

      t.timestamps
    end
  end
end
