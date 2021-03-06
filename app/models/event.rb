class Event < ApplicationRecord
  has_many :user_events_plans
  has_many :users, through: :user_events_plans
  belongs_to :creator, class_name: "User"
  has_many :event_comments
  has_many :event_invitations
  belongs_to :group, optional: true
end
