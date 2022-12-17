class User < ApplicationRecord
    has_many :messages
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 13 }
    has_secure_password
end