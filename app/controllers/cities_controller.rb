class CitiesController < ApplicationController



  def index
    @cities = policy_scope(City)
  end

  def show
    authorize @cities
  end

end
