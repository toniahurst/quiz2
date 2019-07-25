class TitlesController < ApplicationController
	

	def index
		@titles = Title.all
	end

	def new
		@title = Title.new
	end

	def create
		Title.create(title_params)
		redirect_to root_path
	end

	def show
		
	end

	private

	def title_params
		params.require(:title).permit(:name, :author, :description)
	end
end
