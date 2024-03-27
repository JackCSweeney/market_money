class Api::V0::MarketsController < ApplicationController 
	# /api/v0/markets
	def index
		markets = Market.all
		render json: MarketSerializer.new(markets)
	end

	# /api/v0/markets/:id
	def show 
		market = Market.find(params[:id])
		render json: MarketSerializer.new(market)
	end
end