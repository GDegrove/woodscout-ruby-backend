class UsersController < ApplicationController
  before_action :authenticate_admin!, :except => [:show]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_username(params[:id])
  end
end
