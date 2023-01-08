class UsersController < ApplicationController
  # GET /products or /products.json
  def index
    @users = User.all
    @admin_count = User.where(admin: true).count
  end

  def upgrade_to_admin
    @user = User.find(params[:id])
    if @user.update_attribute(:admin, true)
      redirect_to users_index_url, :notice => "User was successfully updated."
    else
      redirect_to users_index_url, :notice => "error"
    end
  end

  private

  def user_params
    params.require(:user).permit(:admin)
  end
end
