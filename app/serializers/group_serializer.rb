class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :group_id, :description, :created_at,
  :updated_at, :creator_id

end
