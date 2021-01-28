class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :address
      t.timestamps
    end
    add_index :houses
  end
end
