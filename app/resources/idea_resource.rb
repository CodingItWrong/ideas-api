# frozen_string_literal: true
class IdeaResource < ApplicationResource
  attributes :summary, :comments

  has_many :quotes

  before_create { _model.user = current_user }

  def self.records(options = {})
    user = current_user(options)
    user.ideas
  end

  def self.creatable_fields(context)
    super - %i[user]
  end

  def self.updatable_fields(context)
    super - %i[user]
  end
end
