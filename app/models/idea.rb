# frozen_string_literal: true
class Idea < ApplicationRecord
  belongs_to :user
  has_many :quotes

  validates :summary, presence: true
end
