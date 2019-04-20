# frozen_string_literal: true
class AuthorsController < ApplicationController
  before_action :doorkeeper_authorize!
end
