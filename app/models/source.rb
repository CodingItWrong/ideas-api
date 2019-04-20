# frozen_string_literal: true
class Source < ApplicationRecord
  belongs_to :author
  has_many :quotes

  validates :title, presence: true
end
