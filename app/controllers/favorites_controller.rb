class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.favo(@micropost)
    redirect_to current_user
    # redirect_back(fallback_location: root_url)
  end
  
  def destroy
    @micropost = Micropost.find(params[:micropost_id])

    current_user.unfavo(@micropost)
    redirect_to current_user
    # redirect_back(fallback_location: root_url)
  end
  
end
