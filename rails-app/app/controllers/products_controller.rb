class ProductsController < ApplicationController
  def new
  end

  def edit
  end

  def index
  end

  def create
    new_product = Product.new(post_params)
    saved = new_product.save

    if saved
      redirect_to params[:next] or :index
      return
    end

    raise "didn't save"

  end
  def update
  end
  def delete
  end

  private

  def post_params
    allowed = [:name]
    request.POST.select {|k,v| allowed.include? k.to_sym }
  end
end
