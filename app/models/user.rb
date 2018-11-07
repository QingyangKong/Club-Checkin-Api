class User < ApplicationRecord
    validates :name, :pub_key, :url, presence: true
end
