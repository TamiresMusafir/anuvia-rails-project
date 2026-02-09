class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show ]

  # GET /services or /services.json
  def index
    @services = Service.order(created_at: :desc)
  end

  # GET /services/1 or /services/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:title, :text_field1, :text_field2, :text_field3, :image)
    end
end
