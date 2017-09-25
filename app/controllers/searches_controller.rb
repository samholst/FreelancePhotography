class SearchesController < ApplicationController
  def index
    if params[:location] != ""
      @results = fetch_results fetch_params
      @search_city_state = fetch_params
    else
      @results = []
      @search_city_state = "United States"
    end
  end

  private
    def fetch_params
      params[:location]
    end

    def fetch_results param
      User.where("LOWER(complete_address) LIKE '%#{param.downcase}%'").order("created_at DESC")
    end

    # def fetch_lat_langs param
    #   User.where("LOWER(complete_address) LIKE '%#{param.downcase}%'").order("created_at DESC").pluck(:lat_lang)
    # end
end
