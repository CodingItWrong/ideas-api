class Idea < ApplicationRecord
  has_many :quotes

  validates :summary, presence: true
end
