# class LikesController < ApplicationController
# 	before_action :set_closet, only: [:create, :destroy]

#   def create
#     @like = Like.create(user_id: current_user.id, comic_id: params[:comic_id])
#     @likes = Like.where(comic_id: params[:comic_id])
#     @comics = Comic.all
#   end
#  def destroy
#     like = Like.find_by(user_id: current_user.id, comic_id: params[:comic_id])
#     like.destroy
#     @likes = Like.where(comic_id: params[:comic_id])
#     @comics = Comic.all
#   end
#   private

#   def set_comics
#     @comics = Comics.find(params[:comic_id])
#   end
# end
