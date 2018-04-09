Rails.application.routes.draw do
	# Default landing page
	# Normally you would have an index page as the landing,
	# but since we are only adding the CSV file then Showing it
	# I deceded to skip the index and keep it simple (not as RESTful)
	root 'auctions#index'

	# This will set all the routes for auctions 
	# but I will only be using some of them
	
	resources :auctions do 
		collection { post :import}
	end
end
