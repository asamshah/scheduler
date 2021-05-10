class MainController < ApplicationController

    def index
        flash[:notice] = "Logged In Successfully"
        flash[:alert] = "Wrong! Try again."
    end
    
end
