# frozen_string_literal: true
class IdeasController < ApplicationController
  before_action :doorkeeper_authorize!
end
