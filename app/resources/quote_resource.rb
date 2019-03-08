class QuoteResource < JSONAPI::Resource
  attributes :text

  has_one :source
  has_one :idea
end
