class UsersController < ApplicationController
    def index
    end

    def create
        @user = User.create( user_params )
        if @user.save
            redirect_to "/success"
        else
            flash[:errors] = []
            flash[:errors] = @user.errors.full_messages
            redirect_to "/"
        end
    end

    def success
        render text: "Form submitted succesfully!"
    end
    private
    def user_params
        params.require(:form).permit(:ninja_name, :ninja_description)
    end
end
