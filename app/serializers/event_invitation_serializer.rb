class EventInvitationSerializer < ActiveModel::Serializer
  attributes :id, :message, :accepted

  has_one :group_inviter
  has_one :user_inviter
  has_one :invited
  has_one :event
end
