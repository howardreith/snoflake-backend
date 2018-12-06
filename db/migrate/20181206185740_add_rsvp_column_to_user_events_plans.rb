class AddRsvpColumnToUserEventsPlans < ActiveRecord::Migration[5.1]
  def change
    add_column :user_events_plans, :rsvp, :string
  end
end
