class BannersController < ApplicationController
  before_action :set_banner, only: %i[ show ]

  # GET /banners or /banners.json
  def index
    @banners = Banner.all
  end

  # GET /banners/1 or /banners/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banner
      @banner = Banner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def banner_params
      params.require(:banner).permit(:title, :subtitle, :button_text, :button_link, :image, :active)
    end
end
