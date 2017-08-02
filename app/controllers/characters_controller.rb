class CharactersController < ApplicationController

  def show
    @character = Character.find(params[:id])
  end

  def new
    @house = House.find(params[:house_id])
    @character = Character.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create(character_params)
    redirect_to house_path(@house)
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to @character.house
  end

  def edit
    @character = Character.find(params[:id])
    @house = @character.house
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to house_character_path(@character)
  end

private
def character_params
  params.require(:character).permit(:name, :weapon, :img_url)
end

end
