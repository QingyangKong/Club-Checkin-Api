class Group < ApplicationRecord
    validates :name, :contract_addr, :admin_addr, :total_erc, :started_time, presence: true
end
