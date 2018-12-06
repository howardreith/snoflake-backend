class CreateGroupComments < ActiveRecord::Migration[5.1]
  def change
    create_table :group_comments do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :event, index: true, foreign_key: true, null: false
      t.string :content

      t.timestamps
    end
  end
end
