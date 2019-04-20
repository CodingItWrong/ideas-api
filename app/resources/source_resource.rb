# frozen_string_literal: true
class SourceResource < ApplicationResource
  attributes :title, :url

  has_one :author
  has_many :quotes

  def self.records(options = {})
    user = current_user(options)
    user.sources
  end
end
