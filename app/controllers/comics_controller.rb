class ComicsController < ApplicationController
	def index
	end
	def new
		@comics = Comic.new
	end
	def create
      Comic.create(name: params[:name], image: params[:image], text: params[:text])
    end

    def search
    	@comics = Comic.new
    	@comics = Comic.order("created_at DESC")
    end


    private
    def tweet_params
      params.permit(:name, :image, :text)
    end

end
