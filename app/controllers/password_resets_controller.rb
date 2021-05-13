class PasswordResetsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            PasswordMailer.with(user: @user).reset.deliver_now
        else
            redirect_to root_path, notice: "If an account with that email was found, we will resend you a link to reset your password"
        end
        
    end
    
    

end