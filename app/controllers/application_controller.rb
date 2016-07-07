class ApplicationController < ActionController::Base
  include ApplicationHelper

  protect_from_forgery with: :exception

  devise_group :user, contains: [:user]
end
