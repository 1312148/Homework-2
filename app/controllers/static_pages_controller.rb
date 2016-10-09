class StaticPagesController < ApplicationController
	def new
	end
	def create
	end
 def home
    if logged_in?
      @status  = current_user.statuses.build
      @feed_items = current_user.feed.paginate(page: params[:page])    
    end
  end
end
