class ProductsController < ApplicationController
  before_filter :authenticate_user!
  def new
    @product = Product.new
  end

  def edit
  end

  def index
    @products = Product.all
  end

  def create
    debugger
    new_product = Product.new(params[:product])

    saved = new_product.save

    if saved
      flash[:notice] = "Successful upload!"
      redirect_to :action => :index
      return
    end

    raise "didn't save"

  end
  def update
  end
  def delete
  end

end
