class SessionsController < ApplicationController
  def new
    if logged_in?
      id = session[:admin_id]
      redirect_to admin_path(id)
    else
      :new
    end
  end

def create
  admin = Admin.find_by(username: params[:session][:username])
  if admin && admin.authenticate(params[:session][:password])
    log_in admin
    redirect_to admin
  else
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
  end
end

  def destroy
    log_out
    redirect_to root_url
  end
end
