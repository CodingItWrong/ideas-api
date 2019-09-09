# frozen_string_literal: true
class TagResource < JSONAPI::Resource
  attributes :name

  has_many :sources
end
