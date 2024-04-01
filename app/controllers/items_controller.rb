class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: 'Item successfully added.'
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:product_id, :expiry_date, :open_date, :quantity)
  end
end
