# frozen_string_literal: true
class Quote < ApplicationRecord
  belongs_to :source
  belongs_to :idea, optional: true

  validates :text, presence: true
end
