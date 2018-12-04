class UserGroupsMembershipSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at
  has_one :user
  has_one :group
end
