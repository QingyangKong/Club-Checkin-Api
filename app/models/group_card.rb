class GroupCard < ApplicationRecord
    validates :user_pk, :message, :check_in_time, presence: true
end
