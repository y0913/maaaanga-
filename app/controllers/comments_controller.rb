class CommentsController < ApplicationController
	def create
		@comment = Comment.create(text: comment_params[:text], comic_id: comment_params[:comic_id], user_id: current_user.id)
	end
	def show
		@comments = Comment.find(params[:id]).order("created_at DESC")
	end
	private
  def comment_params
    params.permit(:text, :comic_id)
  end
end
