class NewStockController < ApplicationController
include ActionView::Helpers::NumberHelper

	def new
		@stock = Stock.new
	end

	def create
		@stock = Stock.new
		@result = Stock.create(stock_params)

		stock_name = stock_params[:stock_name]
		price = stock_params[:price].to_f
		quantity = stock_params[:quantity].to_i
		percentage = stock_params[:percentage].to_f
		years = stock_params[:years].to_i


		@data = calculating_growth(stock_name,price,quantity,percentage,years)
		@result.values.create(@data)

		render :action => 'index', :params => { result: @result, data: @data }
	end

	def calculating_growth(stock_name,price,quantity,percentage,years)
		data = []

		years += 1 
		period = 0
		growth = 0
		
		
		years.times do


			total_price = (price * quantity) + growth

			data << {
				year: period,
				growth: number_to_currency(total_price, precision: 2,:unit => "", :delimiter => "" )
			}

			period += 1
			growth += (total_price * percentage) / 100


		end

		return data
	end

	private

	def stock_params
		params.require(:stock).permit( :stock_name, :price, :quantity, :percentage, :years)
	end
end
