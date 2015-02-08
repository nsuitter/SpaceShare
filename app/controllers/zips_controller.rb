class ZipsController < ApplicationController

  def index
    @listings = Listing.where(:zip => params[:z])
    render json: @listings
  end
end