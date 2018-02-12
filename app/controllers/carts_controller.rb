class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :checkout]

  def show
  end

  def checkout
    @user = current_user
    @cart.line_items.destroy_all
    current_user.create_current_cart
    redirect_to cart_path(@cart), notice: 'Thank you for your order'
  end

  private
  def set_cart
    @cart = current_user.current_cart
  end

end
