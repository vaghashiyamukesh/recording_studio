class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :band_name
      t.string :contact_name
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
