class Opportunity < ApplicationRecord
    belongs_to :user
    # belongs_to :organization
    has_many :app_users
end
