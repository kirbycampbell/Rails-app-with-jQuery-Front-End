class AdminsController < ApplicationController

  def index
    @admins = Admin.all
    @admin = Admin.new
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      #log_in @admin
      flash[:notice] = "Welcome to Space X Admin!"
      redirect_to @admin
    else
      flash[:notice] = "Messed up!"
      render :new
    end
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def destroy
    session.delete :username
    redirect_to controller: 'application', action: 'start'
  end

  private

  def admin_params
    params.require(:admin).permit(:username, :password, :password_confirmation)
  end


end
