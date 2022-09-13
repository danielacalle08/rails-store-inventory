class InventoriesController < ApplicationController
  def index
    @inventory = Inventory.all
  end

  def show
    @product = Inventory.find(params[:id])
  end

  def new
    @product = Inventory.new
  end

  def create
    @product = Inventory.new(product_params)
    if @product.save!
      redirect_to inventories_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:inventory).permit(:name, :amount, :details, :supplier, :price)
  end
end
