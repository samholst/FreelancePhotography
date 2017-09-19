class SearchesController < ApplicationController
  def index
    @search_city_state = params[:location]
  end

  private
    def fetch_params
      params.permit(:city_state)
    end
end
