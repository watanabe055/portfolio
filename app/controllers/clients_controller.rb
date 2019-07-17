class ClientsController < ApplicationController
  before_action :authenticate_user!

  def correct_user #url直打ち防止
      @user = current_user.find_by(id: params[:id])
      unless @user
          redirect_to client_path
      end
  end

  def index
  end

  def edit
  	@user = User.find(params[:id])
    if  @user.id != current_user.id #url直打ち防止
        redirect_to client_path(current_user)
      end
  end

  def show
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
       redirect_to client_path(@user)
	else
		render 'edit'
	end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to homes_top_path
  end

	private
  def user_params
    params.require(:user).permit(:name, :profile_image, :email)
  end

end
