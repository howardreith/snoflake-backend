class GroupInvitation < ApplicationRecord
  belongs_to :inviter, :class_name => 'User'
  belongs_to :invited, :class_name => 'User'
  belongs_to :group
end
