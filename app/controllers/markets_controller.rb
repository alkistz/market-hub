class MarketsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @markets = Market.where.not(latitude: nil, longitude: nil)

    @markers = @markets.map do |market|
      {
        lng: market.longitude,
        lat: market.latitude,
        infoWindow: render_to_string(partial: "info_window", locals: { market: market })
      }
    end
  end

  def show
    
  end


  private

  def market_find
    @market = Market.find(params[:id])
  end

  def market_params
    params.perimt(:market).require(:name, :address, :category)
  end
end
