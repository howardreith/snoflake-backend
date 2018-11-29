class Group < ApplicationRecord
  has_many :users, through: :user_groups_memberships
  belongs_to :creator, class_name: "User"
end
