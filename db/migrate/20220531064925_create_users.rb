class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :role
      t.string :phone_number
      t.boolean :disabled

      t.timestamps
    end
  end
end
