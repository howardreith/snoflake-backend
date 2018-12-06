class AddGroupReferenceToGroupComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :group_comments, :group, index: true
    remove_column :group_comments, :event_id
  end
end
