# frozen_string_literal: true
class TagResource < JSONAPI::Resource
  has_many :sources
end
