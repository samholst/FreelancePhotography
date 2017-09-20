class SearchesController < ApplicationController
  def index
    @results = fetch_results params[:location]
    @search_city_state = params[:location]
  end

  private
    def fetch_params
      params.permit(:location)
    end

    def fetch_results param
      User.where("LOWER(complete_address) LIKE '%#{param.downcase}%'")
    end
end
