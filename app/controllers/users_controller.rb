class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
  end

  def after_sign_in_path_for(resource)
    user_path
  end

  def after_sign_out_path_for(resource)
    entrance_users_path
  end
end
