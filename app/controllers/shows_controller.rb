class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def show
    @show = Show.find_by(id: params[:id])
    @plaid = Plaid.where(show_id: @show.id)
    @character = Character.where(show_id: @show.id)
  end

  def new
  end

  def create
    @show = Show.new
    @show.name = params[:name]
    

    if @show.save
      redirect_to "/shows/#{ @show.id }"
    else
      render 'new'
    end
  end

  def edit
    @show = Show.find_by(id: params[:id])
  end

  def update
    @show = Show.find_by(id: params[:id])
    @show.name = params[:name]

    if @show.save
      redirect_to "/shows/#{ @show.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @show = Show.find_by(id: params[:id])
    @show.destroy


    redirect_to "/shows"
  end
end
