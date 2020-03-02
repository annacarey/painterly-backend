class User < ApplicationRecord
    has_many :paintings
    has_many :collections
    validate :username, :password
end
