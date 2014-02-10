class UsersController < ApplicationController
  before_filter :authenticate_user!, :set_user

  def show
    @bought_items = []
    @products = @user.products
  end

  def update
    @user.update_attributes(params[:user])
    @user.save

    flash[:notice] = "Your name has been updated!"

    redirect_to @user
  end
  def edit
  end


  private

  def set_user
    @user = current_user
  end

  def post_params
    request.POST.slice([:name])
  end

end