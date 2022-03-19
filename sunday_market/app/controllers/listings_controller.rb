class ListingsController < ApplicationController
    before_action :read_listings
    skip_before_action :verify_authenticity_token
    
    def index
        @listings = Listing.all
    end

    def new 
        @listing = Listing.new
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

    def read_listings
        listings = Listing.all
    end

    # def listing_params
    #   params.require(:listing).permit(:title, :description, :price, :sold, :condition, :category_id)
    # end

    # def set_form_vars
    #     @categories = Category.all
    #     @conditions = Listing.conditions.keys
    # end

end
