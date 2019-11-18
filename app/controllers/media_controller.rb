# frozen_string_literal: true
class MediaController < ApplicationController
  before_action :doorkeeper_authorize!
end
