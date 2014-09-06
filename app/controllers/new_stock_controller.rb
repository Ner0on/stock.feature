class NewStockController < ApplicationController
	def new
		@stock = Stock.new
	end

	def create
		@stock = Stock.new
		result = Stock.create(stock_params)
		result.save

		render 'index'
	end

	private

	def stock_params
		params.require(:stock).permit( :stock_name, :price, :quantity, :percentage, :years)
	end
end
