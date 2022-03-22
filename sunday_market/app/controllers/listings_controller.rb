class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    skip_before_action :verify_authenticity_token
    before_action :set_conditions, only: [:new, :edit]
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy] #-> user has to "login" to access app
    #show all the resources
    def index
        @listings = Listing.all
    end

    # get /listing/1 (Showing one of the resources)
    # def show
    #     found_listing = listings.find do |listing|
    #         listing[:id] == params[:id]
    #     end

    #     # add in print found_listing
    # end
    def show
    end

    # get /listings/new (to have a form that allow you to create new resource)
    def new
        @listing = Listing.new
    end 

    # def create
    #     @listing = Listing.create!(listing_params)
    #     redirect_to listings_path
    # end

    def create
        @listing = current_user.listings.new(listing_params)
            if @listing.save 
                redirect_to @listing, notice: "Listing successfully created"
            else
                set_form_vars
                render "new", notice: "Sorry, Something went wrong. Make sure your form is completely filled in before submitting"
            end
    end
    
    # get /listings/1/edit
    def edit

    end

    def update 
        @listing.update(listing_params)
        if @listing.save 
            redirect_to @listing, notice: "Listing successfully updated"
        else
            set_form_vars
            render "edit", notice: "Something went wrong"
        end 
    end

    # DELETE /listing/1
    def destroy
        @listing.destroy
        redirect_to listings_path, notice: "Listing successfully deleted"
    end

    private
    
    def set_listing
        @listing = Listing.find(params[:id])
    end

    def listing_params
        params.require(:listing).permit(:user_id, :title, :description, :price, :condition, :category_id, :sold, :image)
    end

    def set_conditions
        @conditions = Listing.conditions.keys
    end

    def set_categories
        @categories = Category.names
    end

    def set_form_vars
        @categories = Category.all
        @conditions = Listing.conditions.keys
    end

end
