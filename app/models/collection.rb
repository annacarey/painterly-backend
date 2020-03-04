class Collection < ApplicationRecord
  belongs_to :user
  has_many :painting_collections
  has_many :paintings, through: :painting_collections
  validates :title, presence: true
end
