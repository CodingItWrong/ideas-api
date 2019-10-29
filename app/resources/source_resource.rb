# frozen_string_literal: true
class SourceResource < ApplicationResource
  attributes :title, :url, :date, :created_at

  has_one :author
  has_many :quotes
  has_many :tags

  def self.records(options = {})
    user = current_user(options)
    user.sources
  end
end
