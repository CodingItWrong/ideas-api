# frozen_string_literal: true
class TagsController < ApplicationController
  before_action :doorkeeper_authorize!
end
