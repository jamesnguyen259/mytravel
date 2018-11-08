class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update]
    
    def update
        if @user.update_attributes user_params
            flash[:success] = "Profile updated!"
            redirect_to @user
        else
            flash[:danger] = @user.errors.full_messages.join(', ')
            redirect_to @user
        end
    end
    
    def show
        @my_reviews = @user.places
    end
    
    private
        def user_params
            params.require(:user).permit(:name, :avatar)
        end
        # Use callbacks to share common setup or constraints between actions.
        def find_user
            @user = User.find(params[:id])
        end
end
