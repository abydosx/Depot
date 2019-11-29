class SessionsController < ApplicationController
  skip_before_action :authorize

  def create

    user = User.find_by(name: params[:name])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "无效的用户名或密码"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_index_url, notice: "登出"
  end
end