class ListingsController < ApplicationController

  def new
    authenticate_user!
    @listing = Listing.new 
      10.times{ @listing.listing_pictures.build }
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.valid? and @listing.save
      redirect_to listing_path(@listing)
    else 
      render :action => :new
    end
  end

  def search
    
  end

  def edit
  end

  def show
    @listing = get_listing
  end

  def index
    @listings = Listing.all
  end
  private

  def listing_params
    params.require(:listing).permit(:title, :body, :zip, listing_pictures_attributes: [:picture, :listing_id])
  end

  def get_listing
    @listing = Listing.find(params[:id])
  end

end
