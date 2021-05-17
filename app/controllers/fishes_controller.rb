class FishesController < ApplicationController
  before_action :set_fish, only: [:edit,:update,:destroy,:show]


  def index
      @fishes = Fish.all.order("created_at DESC")
      @fish = Fish.new
  end


  def create
      @fish = Fish.new(fish_params)
   if @fish.save
      redirect_to fishes_path
  else
      render :index
  end
end


  def show
  end


  def edit
  end


   def update
    if @fish.update(params.require(:fish).permit(:name,:memo,:image,:item_a,:item_b,:item_c))
       redirect_to fish_path(@fish)
  else
      render :edit
   end
 end


  def destroy
      @fish.destroy
      redirect_to fishes_path
  end


  def search
      @fishes = Fish.search(params[:keyword])
  end


  private

  def fish_params;
      params.permit(:name,:memo,:image,:item_a,:item_b,:item_c)
  end

  def set_fish
      @fish = Fish.find(params[:id])
  end
end


