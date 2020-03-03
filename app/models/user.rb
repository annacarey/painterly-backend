class User < ApplicationRecord
    has_many :paintings
    has_many :collections
    validates :username, uniqueness: true
    has_secure_password
end
