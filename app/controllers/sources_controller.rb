# frozen_string_literal: true
class SourcesController < ApplicationController
  before_action :doorkeeper_authorize!
end
