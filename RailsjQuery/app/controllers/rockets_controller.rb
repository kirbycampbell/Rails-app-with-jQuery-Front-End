class RocketsController < ApplicationController
  def index
    @rockets = Rocket.all
    @admin = Admin.new
  end
  def new
    @rocket = Rocket.new
  end

  def create
    rocket = Rocket.create(rocket_params)
    render json: rocket, status: 201
  end

  def show
    @rocket = Rocket.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @rocket }
    end
  end

private

def rocket_params
  #raise params.inspect
  params.require(:rocket).permit(:name, :top_speed, :capacity, :pilot_id)
end

end
