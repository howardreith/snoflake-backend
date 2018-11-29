class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :group_id
      t.string :description
      t.timestamps
    end
  end
end
