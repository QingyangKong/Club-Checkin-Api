class CardSupporter < ApplicationRecord
    validates :supporter_group_id, :supporter_pk, presence: true
end
