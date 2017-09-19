class PagesController < ApplicationController
  def index
    @search_city_state ||= ""
  end

  def about
  end

  def contact
  end
end
