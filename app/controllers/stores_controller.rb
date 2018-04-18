class StoresController < ApplicationController
  def index
    @stores = Store.all
    if params[:address]
      nearest_stores = Store.near(params[:address], 999999, units: "km")
      @nearest_store = nearest_stores[0]
    end
    rescue
      flash[:notice] = "ERROR: Address Not Found!"
      redirect_to(:action => "index")
  end

  def show
    @store = Store.find(params[:store_id])
  end
end
