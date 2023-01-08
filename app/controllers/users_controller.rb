class UsersController < ApplicationController
  # GET /products or /products.json
  def index
    @users = User.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end
