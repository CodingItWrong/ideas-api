# frozen_string_literal: true
class QuotesController < ApplicationController
  before_action :doorkeeper_authorize!
end
