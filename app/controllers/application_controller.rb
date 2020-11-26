class ApplicationController < ActionController::Base
  # ログイン後ユーザー詳細ページに遷移
  def after_sign_in_path_for(resource)
    user_path(resource)
  end
end
