class UsersController < ApplicationController
    
    def index
        # index is for sending back ALL the resources
        
    end


    def new
        @user = User.create
    end

    

end
