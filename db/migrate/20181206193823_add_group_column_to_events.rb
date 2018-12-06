class AddGroupColumnToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :group, index: true
  end
end
