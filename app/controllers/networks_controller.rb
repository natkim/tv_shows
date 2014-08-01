class NetworksController < ApplicationController

  def index
    @networks = Network.all
  end

  def show
    @network = Network.find_by(id: params[:id])
    @plaid = Plaid.where(network_id: @network.id)
  end

  def new
  end

  def create
    @network = Network.new
    @network.url = params[:url]
    @network.name = params[:name]

    if @network.save
      redirect_to "/networks/#{ @network.id }"
    else
      render 'new'
    end
  end

  def edit
    @network = Network.find_by(id: params[:id])
  end

  def update
    @network = Network.find_by(id: params[:id])
    @network.url = params[:url]
    @network.name = params[:name]

    if @network.save
      redirect_to "/networks/#{ @network.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @network = Network.find_by(id: params[:id])
    @network.destroy


    redirect_to "/networks"
  end
end
