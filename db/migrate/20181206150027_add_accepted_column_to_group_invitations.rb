class AddAcceptedColumnToGroupInvitations < ActiveRecord::Migration[5.1]
  def change
    add_column :group_invitations, :accepted, :boolean
    change_column :group_invitations, :inviter_id, :bigint, null: false
    change_column :group_invitations, :invited_id, :bigint, null: false
    change_column :group_invitations, :group_id, :bigint, null: false
  end
end
