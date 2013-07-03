class RelationshipsController < ApplicationController
	def create
		@user_to_follow = User.find(params[:followed_id])
		current_user.follow!(@user_to_follow)
		redirect_to "home/user_list"
	end
end
