class CommentsController < ApplicationController
	

	def create
		@status = Status.find(params[:status_id])
		@comment = @status.comments.create(comment_params)
		@comment = current_user.comments.build(comment_params)
		if @comment.save
			flash[:success] = "Comment accept!"
			redirect_to status_path(@status)
		else
			@feed_items_comment = []
			render 'statuses/show'
		end
	end

	def destroy
	end

	private 
	def comment_params
		params.require(:comment).permit(:content)
	end
end
