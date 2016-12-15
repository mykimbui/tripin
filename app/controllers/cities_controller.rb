class CitiesController < ApplicationController



  def index
    @cities = policy_scope(City)

  end

  def show

    @city = City.find(params[:id])
    authorize @city
  end

 def weather
  session[:return_to] ||= request.referer

    @city = City.find(params[:city_id])
    authorize @city
  end

  private
  def city_params
    params.require(:city).permit(:name, :picture, :country, :advice, :id )
  end

end
