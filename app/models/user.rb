class User < ApplicationRecord

  has_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    def self.ransackable_associations(auth_object = nil)
    ["tasks"]
    end

    def self.ransackable_attributes(auth_object = nil)
      ["created_at", "email", "encrypted_password", "id", "id_value", "remember_created_at", "reset_password_sent_at", "reset_password_token", "role", "updated_at"]
    end

    ROLES = %w{admin}

    def admin?
        role == "admin"
    end
end
