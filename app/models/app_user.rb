class AppUser < ApplicationRecord
    belongs_to :user
    belongs_to :opportunity
end
