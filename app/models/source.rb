# frozen_string_literal: true
class Source < ApplicationRecord
  belongs_to :author
  belongs_to :medium
  has_many :quotes
  has_and_belongs_to_many :tags

  validates :title, presence: true
end
