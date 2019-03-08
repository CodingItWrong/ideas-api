class Quote < ApplicationRecord
  belongs_to :source
  belongs_to :idea

  validates :text, presence: true
end
