require 'ostruct'

class WelcomeController < ApplicationController
  def index
    @popular_products = Product.all
    @picked_products = Product.all
  end
end
