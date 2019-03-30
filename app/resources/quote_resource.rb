class QuoteResource < ApplicationResource
  attributes :text

  has_one :source
  has_one :idea

  def self.records(options = {})
    user = current_user(options)
    user.quotes
  end
end
