class NewStockController < ApplicationController
	def new
		@stock = Stock.new
	end

	def create
		@stock = Stock.new
	end
end
