class CardReporter < ApplicationRecord
    validates :reporter_group_id, :reporter_pk, presence: true
end
