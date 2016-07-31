class UsersController < ApplicationController

#30.07.2016: added new, create and private user_params

def new
	@user=User.new
end

def create
	@user=User.new(user_params)
	if @user.save
		redirect_to root_url,
		notice: "Welcome to the great minesweeper!"
	else
		render "new"
	end
end


private

def user_params
	params_require(:user).permit(:name,:email,:password,:password_confirmation)
end

end
