class SearchesController < ApplicationController
  def index
    @results = User.where("complete_address LIKE '%#{params[:location]}%'")
    @search_city_state = params[:location]
  end

  private
    def fetch_params
      params.permit(:location)
    end
end
