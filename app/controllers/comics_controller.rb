class ComicsController < ApplicationController
	def index
	end
	def new
		@comics = Comic.new
	end
	def create
      Comic.create(name: comic_params[:name], image: comic_params[:image], text: comic_params[:text], user_id: current_user.id)
    end

    def search
    	@comics = Comic.new
    	@comics = Comic.order("created_at DESC")
    end
    def show
        @comic = Comic.find(params[:id])
        @comment = @comic.comments.all
    end
    def destroy
        comic = Comic.find(params[:id])
        if comic.user_id == current_user.id
           comic.destroy
        end
        redirect_to search_comics_path
    end

    private
    def comic_params
      params.permit(:name, :image, :text)
    end

end
