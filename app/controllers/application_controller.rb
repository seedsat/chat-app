class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    ## ここでdeviseに指定されているストロングパラメーターに新しい値を追加できる
    ## その時にどこのdeviseの処理に追加するかを書く
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
