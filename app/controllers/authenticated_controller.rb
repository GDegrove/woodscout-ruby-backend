class AuthenticatedController < ApplicationController
    before_action  :authenticate_user!
    layout 'authenticated'    
    protect_from_forgery with: :exception
    
  end
  