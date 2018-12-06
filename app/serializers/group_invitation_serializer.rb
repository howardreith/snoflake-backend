class GroupInvitationSerializer < ActiveModel::Serializer
  attributes :id, :message, :accepted

  has_one :group
  has_one :inviter
  has_one :invited
end
