class StaticPagesController < ApplicationController
 
  def home
  	@project = current_user.projects.build if signed_in?
  	if params[:tag]
  		@feed_items = Project.tagged_with(params[:tag]).page(params[:page]).per(15)
  		# Must be a multiple of 3 on the pagination, otherwise the in_groups_of(3) on the view will not work. 
  	else
  		@feed_items = Project.text_search(params[:query]).page(params[:page]).per(15)
  	end
  end

  def about
  end

  def contact
  end
end
