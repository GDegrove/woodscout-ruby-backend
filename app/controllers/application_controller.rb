class ApplicationController < ActionController::Base
  before_action  :authenticate_user!
  protect_from_forgery with: :exception
  
  def authenticate_admin!
    current_user.has_role? :admin
  end
end
