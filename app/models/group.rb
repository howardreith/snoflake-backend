class Group < ApplicationRecord
  has_many :user_groups_memberships
  has_many :users, through: :user_groups_memberships
  belongs_to :creator, class_name: "User"
  has_many :group_comments
  has_many :group_invitations
  has_many :sent_event_invitations, :class_name => 'EventInvitation', :foreign_key => 'group_inviter_id'
  has_many :events
end
