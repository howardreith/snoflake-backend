class CreateEventInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :event_invitations do |t|
      t.references :user_inviter, null: false
      t.references :group_inviter
      t.references :event, foreign_key: true, null: false
      t.references :invited, null: false
      t.string :message
      t.boolean :accepted

      t.timestamps
    end
  end
end
