class UsersController < ApplicationController
  before_filter :set_user

  def show
    authenticate_user!
    @bought_items = []
  end

  def update
    authenticate_user!

    @user.name = params.name
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