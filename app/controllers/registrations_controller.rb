class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        # render html: helpers.tag.strong('Not Found')
        # render plain: params[:user]
        
        @user = User.new(user_params)
        if @user.save
            session[:user_id]=@user.id # Use to check whether logged in or not. This is server-side but browser can not do anything.
            redirect_to root_path, notice: "Successfully created account"
        else
            redirect_to sign_up_path, notice: "Account not created"
            # render :new
        end
    end

    private
    def user_params
        # raise an error is user is not found
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
