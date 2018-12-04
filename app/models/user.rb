# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :user_groups_memberships
  has_many :groups, through: :user_groups_memberships
end
