class DlyirrigationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dlyirrigation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @dlyirrigations = Dlyirrigation.all.order('date DESC')
    respond_with(@dlyirrigations)
  end

  def show
    respond_with(@dlyirrigation)
  end

  def new
    @dlyirrigation = Dlyirrigation.new
    respond_with(@dlyirrigation)
  end

  def edit
  end

  def create
    @dlyirrigation = Dlyirrigation.new(dlyirrigation_params)
    @dlyirrigation.save
    respond_with(@dlyirrigation)
  end

  def update
    @dlyirrigation.update(dlyirrigation_params)
    respond_with(@dlyirrigation)
  end

  def destroy
    @dlyirrigation.destroy
    respond_with(@dlyirrigation)
  end
  
  def report
    if params[:location_id].present? and params[:date].present?
      @location = Location.find(params[:location_id])
      @sets = @location.irrisets
      @date = params[:date].to_date
      @dlyirrigations = @location.dlyirrigations.where(date: @date)
    end
  end

  private
    def set_dlyirrigation
      @dlyirrigation = Dlyirrigation.find(params[:id])
    end

    def dlyirrigation_params
      params.require(:dlyirrigation).permit(:date, :irriset_id, :section_id, :runhr, :arearun, :irricost, :rainfall, :remarks)
    end
end
