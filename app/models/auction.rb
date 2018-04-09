class Auction < ApplicationRecord
	# class method, with file that needs to be imported
	def self.import(file)
		# looping over each row in the CSV file
		CSV.new(file.path, headers: true) do |row|
			# trying to manually create a new auction
			# manually did it this way to change numbers form string to ints, 
			# and make sure everything was pair correctly
			Auction.new(:name => row["auction name"],
									:address => row["street address"],
									:city => row["city"],
									:state => row["state"],
									:zip => row["zip"].to_i,
									:vehicle_year => row["vehicle year"].to_i,
									:vehicle_make => row["vehicle make"],
									:vehicle_model => row["vehicle model"],
									:vehicle_stock_number => row["vehicle stock number"].to_i,
									:winning_bid => row["winning bid"].to_i,
									:seller_payout => row["seller payout"].to_i,
									:description =>row["description"])
		end	
	end

end
