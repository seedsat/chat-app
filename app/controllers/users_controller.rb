class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      ## redirect_to Prefix名
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    ## permitで編集したいキーを指定する
    ## ビュー側のform_withで指定したキーが取れる
    params.require(:user).permit(:name, :email)
  end
end
