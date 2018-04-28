class ApplicationController < ActionController::Base
  before_action  :authenticate_user!
  protect_from_forgery with: :exception
  layout :choose_layout 


  def authenticate_admin!
    current_user.has_role? :admin
  end

  def choose_layout
    if user_authenticated? 
      "anonymous"
    else
      "authenticated"
    end

  end

  def user_authenticated?
    current_user == nil
  end
end
