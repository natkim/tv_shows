class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find_by(id: params[:id])
  end

  def new
  end

  def create
    @character = Character.new
    @character.show_id = params[:show_id]
    @character.actor_id = params[:actor_id]

    if @character.save
      redirect_to "/characters/#{ @character.id }"
    else
      render 'new'
    end
  end

  def edit
    @character = Character.find_by(id: params[:id])
  end

  def update
    @character = Character.find_by(id: params[:id])
    @character.show_id = params[:show_id]
    @character.actor_id = params[:actor_id]

    if @character.save
      redirect_to "/characters/#{ @character.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @character = Character.find_by(id: params[:id])
    @character.destroy


    redirect_to "/characters"
  end
end
