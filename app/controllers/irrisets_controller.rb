class IrrisetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_irriset, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @irrisets = Irriset.all
    respond_with(@irrisets)
  end

  def show
    respond_with(@irriset)
  end

  def new
    @irriset = Irriset.new
    respond_with(@irriset)
  end

  def edit
  end

  def create
    @irriset = Irriset.new(irriset_params)
    @irriset.save
    respond_with(@irriset)
  end

  def update
    @irriset.update(irriset_params)
    respond_with(@irriset)
  end

  def destroy
    @irriset.destroy
    respond_with(@irriset)
  end

  private
    def set_irriset
      @irriset = Irriset.find(params[:id])
    end

    def irriset_params
      params.require(:irriset).permit(:setname, :motordet, :motorhp, :gpm, :fuel, :fuelperhr, :location_id)
    end
end
