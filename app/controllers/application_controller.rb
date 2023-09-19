class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            # @user = User.find(session[:user_id]) # this throws an error if it can not find the user
            Current.user = User.find_by(id: session[:user_id]) # this does not throw an error if it can't find the user
        end
    end

    def require_user_logged_in!
        redirect_to sign_in_path, alert: "You must be signed in to do that." if Current.user.nil?
    end
end
