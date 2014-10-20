class BandsController < ApplicationController
  before_filter :set_band, only: [:show, :edit, :update, :destroy]

  def index
    @bands = Band.all
    respond_with(@bands)
  end

  def show
    respond_with(@band)
  end

  def new
    @band = Band.new
    respond_with(@band)
  end

  def edit
  end

  def create
    @band = Band.new(params[:band])
    @band.save
    respond_with(@band)
  end

  def update
    @band.update_attributes(params[:band])
    respond_with(@band)
  end

  def destroy
    @band.destroy
    respond_with(@band)
  end

  private
    def set_band
      @band = Band.find(params[:id])
    end
end
