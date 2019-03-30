class AuthorsController < ApplicationController
  before_action :doorkeeper_authorize!
end
