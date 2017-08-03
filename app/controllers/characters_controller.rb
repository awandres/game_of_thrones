class CharactersController < ApplicationController

before_action :authenticate_user!, :except => [:show]


  def show
    @character = Character.find(params[:id])
  end

  def new
    @house = House.find(params[:house_id])
    @character = Character.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create!(character_params.merge(user: current_user))
    redirect_to house_path(@house)
  end

  def destroy
    @character = Character.find(params[:id])
    if @character.user == current_user
      @character.destroy
      redirect_to @character.house
    else
      redirect_to @character.house
      flash[:alert] = "Only the user who created this character can destroy"
    end
  end

  def edit
    @character = Character.find(params[:id])
    @house = @character.house
  end

  def update
    @character = Character.find(params[:id])
    if @character.user == current_user
      @character.update(character_params)
      redirect_to house_character_path(@character)
    else
      redirect_to house_character_path(@character)
      flash[:alert] = "Only the user who created this character can edit"
    end
  end

private
def character_params
  params.require(:character).permit(:name, :weapon, :img_url)
end

end
