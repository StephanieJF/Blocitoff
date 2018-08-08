class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to users_show_path
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      render :new
    end
  end

    def destroy
      @item = Item.find(params[:id])
      @item.destroy

      respond_to do |format|
        if @item.destroy
          format.html { redirect_to users_show_path }
          format.js
        else
          format.html { redirect_to users_show_path }
        end
      end
    end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
