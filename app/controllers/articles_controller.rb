class ArticlesController < ApplicationController
	
	def show
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
	end

	# Responds to the /new route for article requests.
	# Ruby will first attempt to locate the missing template. Here, it will look for articles/new.
	# If it can't find it, it'll look at application/new (since it inherits from ApplicationController)
	def new
		# Or article will be null for new. Needs to have an empty article object here.
		# Curious though. Does this mean rails manages the session automatically?
		@article = Article.new
	end

	# Page rendering method.
	def edit
		@article = Article.find(params[:id])
	end

	def create
		# Check out the parameters for the request.
		# Shorthand hash passed in to function render.
		# This line refactors in to the one below it.
  		# @article = Article.new(params[:article]).permit(:title, :text);
  		@article = Article.new(article_params)

  		if @article.save
  			# TODO: Where does this go to? Seems to go to the show method in this controller. Probably defaults to that.
  			redirect_to(@article);
  		else
  			render 'new'
  		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to(@article)
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	private 
		def article_params
			params.require(:article).permit(:title, :text)
		end
end
