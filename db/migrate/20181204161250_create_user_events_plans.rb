class CreateUserEventsPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :user_events_plans do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.references :event, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
