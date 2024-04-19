class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def create 
    @item = Item.new(item_params)
    if @item.save 
      redirect_to root_path
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:comment, :task_id)
  end
end
