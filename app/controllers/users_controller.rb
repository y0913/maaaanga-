class UsersController < ApplicationController
	def show
      @nickname = current_user.nickname
      @comics = current_user.comics.page(params[:page]).per(5).order("created_at DESC")
    end
end
