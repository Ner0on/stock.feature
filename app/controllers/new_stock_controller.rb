class NewStockController < ApplicationController

	def new
		@stock = Stock.new
	end

	def create
		@stock = Stock.new
		@result = Stock.create(stock_params)

		render :action => 'index', :params => @result
	end

	private

	def stock_params
		params.require(:stock).permit( :stock_name, :price, :quantity, :percentage, :years)
	end
end
