class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit(:name, :email, :password_digest, :password_confirmation)
    end

end
