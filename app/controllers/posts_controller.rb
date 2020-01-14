class PostsController < ApplicationController

	def index
		@posts =Post.all
	end

	def new
	
	end

	def show
		@post =Post.find(params[:id])
	end


	def create
		# => render plain: params[:post].inspect
		@post = Post.new(post_params)
		@post.user = User.first
		if @post.save
			flash[:notice]="Creaeted"
			redirect_to @post
		else
			render 'new'
		end

	end

	private def post_params
		params.require(:post).permit(:title, :body)
	end


end

#@post.user = User.first
#  		if @post.save
#   			flash[:notice] = "Article was successfully created"
#   			redirect_to post_path(@apost)
#  		else

#   			render 'new'