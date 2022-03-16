class ListingsController < ApplicationController
    
    def index
        render plain: "You are on the listings page"
        # <%= link_to "Home Page", root %>
        listings = read_listings
        p listings
        render json: listings
    end

    def show
        # show is for sending back only 1 resource
        render plain: "This is the show method, sending back only 1 resource"

        found_listing = listings.find do |listing|
            listing[:id] == params[:id]
        end

        render json: found_listing
    end

    # def create

    # end

    # def destroy

    # end

    def read_listings
        # JSON.parse(File.read(Rails.public_path.join("listings.json")))
        listings = Listing.all
        
    end

end
