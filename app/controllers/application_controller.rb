class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception #不正行為を禁止する

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
  end

  def after_sign_in_path_for(resource)
    if current_user.try(:admin?)
    	rails_admin_path
    else
    	client_path(:id)
    end
  end

  def after_sign_out_path_for(resource)
    homes_top_path
  end
end
