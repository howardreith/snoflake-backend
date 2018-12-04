class UserGroupsMembershipSerializer < ActiveModel::Serializer
  attributes :created_at, :updated_at
  has_one :user
  has_one :group
end
