class SearchesController < ApplicationController
  def index
    @results = fetch_results params[:location]
    @lat_langs = @results.pluck(:lat_lang)
    @search_city_state = params[:location]
  end

  private
    def fetch_params
      params.permit(:location)
    end

    def fetch_results param
      User.where("LOWER(complete_address) LIKE '%#{param.downcase}%'").order("created_at DESC")
    end

    # def fetch_lat_langs param
    #   User.where("LOWER(complete_address) LIKE '%#{param.downcase}%'").order("created_at DESC").pluck(:lat_lang)
    # end
end
