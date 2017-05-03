class SessionsController < ApplicationController

  def create
    user = User.find_by('lower(username) = ?', session_params[:username].downcase)
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_url
    else
      redirect_to root_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  private
  def session_params
    params.require(:session).permit(:username, :password)
  end
end
