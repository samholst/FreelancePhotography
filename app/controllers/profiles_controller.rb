class ProfilesController < ApplicationController
  def index
    @user = User.find(fetch_params)
  end

  private
    def fetch_params
      params[:id]
    end
end
