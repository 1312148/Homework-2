class StatusesController < ApplicationController
	def new
	end
	def show
		@status = Status.find(params[:id])
		if logged_in?
  		@comment  = current_user.comments.build
      	@feed_items_comment = current_user.feed_comment.paginate(page: params[:page])
      	end
	end
	def create
	    @status = current_user.statuses.build(status_params)
	    if @status.save
	      flash[:success] = "Micropost created!"
	      redirect_to root_url
	    else
	      @feed_items = []
	      render 'static_pages/home'
	    end
	end

	def destroy
  	end

  	

  	private
    def status_params
      params.require(:status).permit(:content)
    end
  

end
