# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :user_groups_memberships
  has_many :groups, through: :user_groups_memberships
  has_many :user_events_plans
  has_many :events, through: :user_events_plans
  has_many :group_comments
  has_many :event_comments
  has_many :received_group_invitations, :class_name => 'GroupInvitation', :foreign_key => 'invited_id'
  has_many :sent_group_invitations, :class_name => "GroupInvitation", :foreign_key => 'inviter_id'
  has_many :received_event_invitations, :class_name => 'EventInvitation', :foreign_key => 'invited_id'
  has_many :sent_event_invitations, :class_name => 'EventInvitation', :foreign_key => 'user_inviter_id'
end
