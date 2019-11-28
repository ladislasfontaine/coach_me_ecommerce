class ItemsController < ApplicationController

  def index
    @items = Item.all
  
  end

  def show
    @item = Item.find(params[:id])
  end

  def welcome
    @items = Item.all
  end

end
