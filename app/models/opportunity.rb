class Opportunity < ApplicationRecord
    belongs_to :user
    has_many :app_users
end
