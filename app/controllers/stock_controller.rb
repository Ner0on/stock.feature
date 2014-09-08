class StockController < ApplicationController
	def index
		@stocks = Stock.all
	end

	def show
		@stock = Stock.find(params[:id])
		@values = @stock.values	
	end
end
