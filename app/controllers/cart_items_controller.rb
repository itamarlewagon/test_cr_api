class CartItemsController < ApplicationController
  def add
    @cart = Cart.find(params[:cart_id])
    @cart_items = @cart.cart_items

    @found_item = @cart_items.detect do |item| 
      cart_item_params[:medicine_id] == item.medicine_id
    end
    if @found_item.medicine.stock > 0
      @found_item.quantity += 1
      @found_item.medicine.stock -= 1
      @found_item.save
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:cart_id, :medicine_id, :quantity)
  end
end
