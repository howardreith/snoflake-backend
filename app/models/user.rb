# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :user_groups_memberships
  has_many :groups, through: :user_groups_memberships
  has_many :user_events_plans
  has_many :events, through: :user_events_plans
  has_many :group_comments
end
