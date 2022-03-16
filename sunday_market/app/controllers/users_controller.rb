class UsersController < ApplicationController
    
    def index
        # index is for sending back ALL the resources
        all_listings = listings.all
        render all_listings
    end


    def new
        @user = User.create
    end

    

end
