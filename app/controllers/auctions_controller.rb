class AuctionsController < ApplicationController
	def index
		@auctions = Auction.all
	end

	def import
		# should call the auction model and run the import method with the file uploaded
		Auction.import(params[:file])
		# after import, redirect to let us know it worked
		redirect_to root_url, notice: "Data Imported"
	end
	
	def new
	end

	def create
	end

	# def show
	# end

	# def edit
	# end

	# def update
	# end

	# def destroy
	# end
end
