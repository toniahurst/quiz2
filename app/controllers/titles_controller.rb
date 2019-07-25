class TitlesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@titles = Title.all
	end

	def new
		@title = Title.new
	end

	def create
		current_user.titles.create(title_params)
		redirect_to root_path
	end

	def show
		@title = Title.find(params[:id])
	end

	def edit
		@title = title.find(params[:id])	
	end

	private

	def title_params
		params.require(:title).permit(:name, :author, :description)
	end
end
