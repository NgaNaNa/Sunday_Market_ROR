class ApplicationController < ActionController::Base
    helper_method :current_user
    before_action :authenticate_user! #-> user has to "login" to access app

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        else
            @current_user = nil
        end
    end
end
