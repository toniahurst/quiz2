class TitlesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update]

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
  	@title = Title.find(params[:id])	

  if @title.user != current_user
    return render plain: 'Not Allowed', status: :forbidden
  end

	end

	def update
	  @title = Title.find(params[:id])
	  if @title.user != current_user
	    return render plain: 'Not Allowed', status: :forbidden
	  end

	  @title.update_attributes(title_params)
	  redirect_to root_path
	end

	def destroy
		@title = Title.find(params[:id])
		@title.destroy
		redirect_to root_path
	end

	private

	def title_params
		params.require(:title).permit(:name, :author, :description)
	end
end
