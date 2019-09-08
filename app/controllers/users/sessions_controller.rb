class Users::SessionsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    super
  end

  def destroy
    sign_out(current_user)
    redirect_to root_path
  end
end
