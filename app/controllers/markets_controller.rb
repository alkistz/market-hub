class MarketsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @markets = Market.where.not(latitude: nil, longitude: nil)

    @markers = @markets.map do |market|
      {
        lng: market.longitude,
        lat: market.latitude
      }
    end
  end

end
