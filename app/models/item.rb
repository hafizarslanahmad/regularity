class Item < ApplicationRecord
    belongs_to :task

    def self.ransackable_associations(auth_object = nil)
        ["task"]
    end

    def self.ransackable_attributes(auth_object = nil)
    ["commen", "created_at", "id", "id_value", "task_id", "updated_at"]
    end
end
