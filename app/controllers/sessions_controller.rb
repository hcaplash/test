class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      if user.is_admin == "true"
        redirect_to :controller => "admins", :action => "show"
      else
        redirect_to :controller => "customers", :action => "show"
      end
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
