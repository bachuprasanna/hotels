class RestarentsController < ApplicationController
  def show
    @restarent = Restarent.find(params[:id])
  end
  def new
   end
   def index
    @restarents = Restarent.all
  end
  def create
  @restarent = Restarent.new(restarent_params)
 
  @restarent.save
  redirect_to @restarent
  end
  def restarent_params
    params.require(:restarent).permit(:Name_of_restarent)
  end
end
