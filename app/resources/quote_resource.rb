# frozen_string_literal: true
class QuoteResource < ApplicationResource
  attributes :text, :comments

  has_one :source
  has_one :idea

  def self.records(options = {})
    user = current_user(options)
    user.quotes
  end
end
