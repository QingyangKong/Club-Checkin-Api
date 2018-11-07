class CardReporter < ApplicationRecord
    validates :reporter_group_id, presence: true
end
