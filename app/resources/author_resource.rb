# frozen_string_literal: true
class AuthorResource < ApplicationResource
  attributes :name, :affiliation

  has_many :sources

  before_create { _model.user = current_user }

  def self.records(options = {})
    user = current_user(options)
    user.authors
  end

  def self.creatable_fields(context)
    super - %i[user]
  end

  def self.updatable_fields(context)
    super - %i[user]
  end
end
