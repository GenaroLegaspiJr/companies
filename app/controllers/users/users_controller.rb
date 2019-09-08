class Users::UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @company = @user.company
  end
end
