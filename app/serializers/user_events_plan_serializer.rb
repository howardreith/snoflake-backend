class UserEventsPlanSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :updated_at
  has_one :user
  has_one :event
end
