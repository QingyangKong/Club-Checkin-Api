class Member < ApplicationRecord
    validates :group_member_id, :user_pk, presence: true
end
