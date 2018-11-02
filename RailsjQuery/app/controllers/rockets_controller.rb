class RocketsController < ApplicationController
  def index
    @rockets = Rocket.all
    @admin = Admin.new
  end
  def new
    @rocket = Rocket.new
  end

  def create
    @rocket = Rocket.new(rocket_params)
    if @rocket.save
      flash[:notice] = "Rocket Created"
      redirect_to :rockets
    else
      flash[:notice] = "Something was missing"
      render :new
    end
  end

  def show
    @rocket = Rocket.find(params[:id])
    render json: @rocket, status: 200
  end

private

def rocket_params
  #raise params.inspect
  params.require(:rocket).permit(:name, :top_speed, :capacity, :rocket_engineer_relation, :pilot_id)
end

end
