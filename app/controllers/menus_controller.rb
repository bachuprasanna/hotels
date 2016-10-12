class MenusController < ApplicationController

  def show
    @menu = Menu.find(params[:id])
  end
  def new
   end
   def index
    @menus = Menu.all
  end
  def create
  @menu = Menu.new(menu_params)
 
  @menu.save
  redirect_to @menu
  end
  def menu_params
    params.require(:menu).permit(:restarent_id, :item, :cost)
  end
end

