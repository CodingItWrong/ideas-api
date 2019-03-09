class AuthorResource < JSONAPI::Resource
  attributes :name

  has_many :sources
end
