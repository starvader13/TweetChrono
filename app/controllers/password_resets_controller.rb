class PasswordResetsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            # Send Email
            PasswordMailer.with(user: @user).reset.deliver_now
        end

        redirect_to root_path, notice: "If an account with that email was found, we have sent a link to reset that password"

    end

    def edit
        @user = User.find_signed!(params[:token], purpose: "password_reset")
    rescue ActiveSupport::MessageVerifier::InvalidSignature
        redirect_to sign_in_path, alert: "Your token has expired. PLease try again"
    end

    def update
        @user = User.find_signed!(params[:token], purpose: "password_reset")
        if @user.update(password_params)
            redirect_to sign_in_path, notice: "Your Password was reset successfully. PLease sign in"
        else
            redirect_to action: :edit
        end
    end

    private

    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end

end
