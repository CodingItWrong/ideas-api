class IdeaResource < ApplicationResource
  attributes :summary

  has_many :quotes

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
