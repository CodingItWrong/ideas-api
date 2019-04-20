# frozen_string_literal: true
class Author < ApplicationRecord
  belongs_to :user
  has_many :sources

  validates :name, presence: true
end
