class User < ApplicationRecord
    has_many :paintings
    has_many :collections
    validates :username, :password
end
