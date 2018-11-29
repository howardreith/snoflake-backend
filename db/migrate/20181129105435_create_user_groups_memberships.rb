class CreateUserGroupsMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :user_groups_memberships do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :group, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
