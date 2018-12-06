class EventInvitation < ApplicationRecord
  belongs_to :user_inviter, :class_name => 'User'
  belongs_to :invited, :class_name => 'User'
  belongs_to :group_inviter, :class_name => 'Group', optional: true
  belongs_to :event
end
