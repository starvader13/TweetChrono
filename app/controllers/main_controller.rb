class MainController < ApplicationController
    def index
        # flash.now[:notice] = 'Logged in successfully'
        # flash[:alert] = 'Invalid email-id or password'

        if session[:user_id]
            # @user = User.find(session[:user_id]) # this throws an error if it can not find the user
            @user = User.find_by(id: session[:user_id]) # this does not throw an error if it can't find the user
        end
    end
end
