class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :location_address, :location_name, :created_at,
  :updated_at, :creator_id
end
