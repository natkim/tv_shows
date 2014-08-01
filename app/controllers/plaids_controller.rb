class PlaidsController < ApplicationController

  def index
    @plaids = Plaid.all
  end

  def show
    @plaid = Plaid.find_by(id: params[:id])
  end

  def new
  end

  def create
    @plaid = Plaid.new
    @plaid.network_id = params[:network_id]
    @plaid.show_id = params[:show_id]

    if @plaid.save
      redirect_to "/plaids/#{ @plaid.id }"
    else
      render 'new'
    end
  end

  def edit
    @plaid = Plaid.find_by(id: params[:id])
  end

  def update
    @plaid = Plaid.find_by(id: params[:id])
    @plaid.network_id = params[:network_id]
    @plaid.show_id = params[:show_id]

    if @plaid.save
      redirect_to "/plaids/#{ @plaid.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @plaid = Plaid.find_by(id: params[:id])
    @plaid.destroy


    redirect_to "/plaids"
  end
end
