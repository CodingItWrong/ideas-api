class IdeasController < ApplicationController
  before_action :doorkeeper_authorize!
end
