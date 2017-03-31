class ArticlesController < ApplicationController
	
	# Responds to the /new route for article requests.
	# Ruby will first attempt to locate the missing template. Here, it will look for articles/new.
	# If it can't find it, it'll look at application/new (since it inherits from ApplicationController)
	def new

	end

	def create
		# Check out the parameters for the request.
		# Shorthand hash passed in to function render.
  		render plain: params[:article].inspect
	end
end
