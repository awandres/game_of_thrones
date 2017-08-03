class HousesController < ApplicationController

before_action :authenticate_user!, :except => [:show, :index]

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.create!(house_params.merge(user: current_user))
    redirect_to @house
  end

  def edit
    @house = House.find(params[:id])
  end


  def destroy
    @house = House.find(params[:id])
    if @house.user == current_user
      @house.destroy
      redirect_to houses_path
    else
      redirect_to house_path(@house)
      flash[:alert] = "Only the user who created this house can destroy it"
    end
  end
  
  def update

    @house = House.find(params[:id])
    if @house.user == current_user
      @house.update(house_params)
      redirect_to house_path(@house)
    else
      redirect_to house_path(@house)
      flash[:alert] = "Only the user who created this house can edit"
    end

  end

private

def house_params
  params.require(:house).permit(:name, :animal, :img_url)
end
end
