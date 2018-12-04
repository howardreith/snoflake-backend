class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location_address
      t.string :location_name

      t.timestamps
    end
  end
end
