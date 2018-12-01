class ComicsController < ApplicationController
	def index
	end
	def new
		@comics = Comic.new
	end
	def create
      Comics.create(name: params[:name], image: params[:image], text: params[:text])
      redirect_to action: :index
    end
    def search
    end
end
