class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at,
  :updated_at, :creator_id

end
