class QuotesController < ApplicationController
  before_action :doorkeeper_authorize!
end
