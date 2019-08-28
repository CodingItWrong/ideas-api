# frozen_string_literal: true
class QuoteResource < ApplicationResource
  attributes :text, :location, :comments, :created_at

  has_one :source
  has_one :idea

  def self.records(options = {})
    user = current_user(options)
    user.quotes
  end
end
