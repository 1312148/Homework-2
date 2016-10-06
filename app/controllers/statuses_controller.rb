class StatusesController < ApplicationController
	def new
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
