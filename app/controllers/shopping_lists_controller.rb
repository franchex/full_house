class ShoppingListsController < ApplicationController

  def index
    @shopping_lists = ShoppingList.all
  end

  def create
    @shopping_list = ShoppingList.new(shopping_list_params)

    respond_to do |format|
      if @shopping_list.save
        format.html { redirect_to space_shopping_list_path, notice: "Item was successfully added" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def shopping_list_params
    params.require(:shopping_list).permit(:name)
  end
end
