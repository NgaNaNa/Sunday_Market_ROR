class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    skip_before_action :verify_authenticity_token
    
    def index
        @listings = Listing.all
    end

    # get /movies/1
    def show
    end

    # get /listings/new
    def new
        @listing = Listing.new
    end 

    def create
        @listing = Listing.create(listing_params)
        redirect_to listings_path
    end

    # get /listings/1/edit
    def edit
    end

    def update
    end
    # DELETE /movies/1
    def destroy
    end

    # def create
    #     @listing = current_user.listings.new(listing_params)
    #         if @listing.save 
    #             redirect_to @listing, notice: "Listing successfully created"
    #         else
    #             set_form_vars
    #             render "new", notice: "Sorry, Something went wrong. Make sure your form is completely filled in before submitting"
    #         end
    # end

    # def show
    #     # show is for sending back only 1 resource
    #     render plain: "This is the show method, sending back only 1 resource"

    #     found_listing = listings.find do |listing|
    #         listing[:id] == params[:id]
    #     end

    #     # add in print found_listing
    # end

    private
    
    def set_listing
        @listing = Listing.find(params[:id])
    end

    # def read_listings
    #     listings = Listing.all
    # end

    def listing_params
      params.require(:listing).permit(:title, :description, :price, :condition, :category_id)
    end

    # def set_form_vars
    #     @categories = Category.all
    #     @conditions = Listing.conditions.keys
    # end

end
