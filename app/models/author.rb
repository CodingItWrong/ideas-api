class Author < ApplicationRecord
  belongs_to :user
  has_many :sources

  validates :name, presence: true
end
