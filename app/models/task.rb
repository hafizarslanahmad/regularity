class Task < ApplicationRecord

    belongs_to :user
    has_many :items

    def self.ransackable_associations(auth_object = nil)
        ["user"]
    end
    
    def self.ransackable_attributes(auth_object = nil)
        ["assignment", "created_at", "id", "id_value", "updated_at", "user_id", "email"]
    end
end
