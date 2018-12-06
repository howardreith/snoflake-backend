class CreateGroupInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :group_invitations do |t|
      t.references :inviter
      t.references :invited
      t.references :group, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
