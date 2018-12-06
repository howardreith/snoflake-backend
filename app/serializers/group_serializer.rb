class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at,
  :updated_at, :creator_id

  has_many :users
  has_many :group_comments
  has_many :sent_event_invitations, :class_name => 'EventInvitation', :foreign_key => 'group_inviter_id'


end
