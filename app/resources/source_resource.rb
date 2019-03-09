class SourceResource < JSONAPI::Resource
  attributes :title, :url

  has_one :author
  has_many :quotes
end
