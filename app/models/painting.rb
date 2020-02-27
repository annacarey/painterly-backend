class Painting < ApplicationRecord
  belongs_to :user
    has_many :painting_collections
    has_many :collections, through: :painting_collections
    serialize :grid, Array
end
