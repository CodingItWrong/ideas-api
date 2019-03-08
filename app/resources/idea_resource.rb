class IdeaResource < JSONAPI::Resource
  attributes :summary

  has_many :quotes
end
