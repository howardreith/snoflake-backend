# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :groups
  has_many :events
  has_many :group_comments
  has_many :event_comments


end
