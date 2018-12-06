# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :group_comments

end
