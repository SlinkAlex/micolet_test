class UsersController < ApplicationController 
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Se ha suscrito satisfactoriamente"
            render 'new'
        else
            render 'new'
        end
    end
    
    def update
        redirect_to root_path
    end
    private
        def user_params
            params.require(:user).permit(:email, :m_female, :m_male, :m_kids)
        end

end