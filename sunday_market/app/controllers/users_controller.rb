class UsersController < ApplicationController
    
    def index
        # index is for sending back ALL the resources
        render @user
    end


    def new
        @user = User.create
    end

    def show
        all_users = User.all
    end


    

end
