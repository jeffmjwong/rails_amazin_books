class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:store_id])
  end

  def form
    @store = Store.new
  end
end
