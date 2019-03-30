class AuthorResource < ApplicationResource
  attributes :name

  has_many :sources

  before_create do
    _model.user = current_user
  end

  def self.creatable_fields(context)
    super - [:user]
  end

  def self.updatable_fields(context)
    super - [:user]
  end
end
