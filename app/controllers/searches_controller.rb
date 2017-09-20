class SearchesController < ApplicationController
  def index
    @results = User.where("LOWER(complete_address) LIKE '%#{params[:location].downcase}%'")
    @search_city_state = params[:location]
  end

  private
    def fetch_params
      params.permit(:location)
    end
end
