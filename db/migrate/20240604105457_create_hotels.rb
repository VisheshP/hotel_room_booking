class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :total_rooms
      t.timestamps
    end
  end
end
