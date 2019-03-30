class SourcesController < ApplicationController
  before_action :doorkeeper_authorize!
end
