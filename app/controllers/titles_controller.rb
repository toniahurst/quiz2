class TitlesController < ApplicationController

	def index
		@titles = Title.all 
	end

	def new
		@title = Title.new
	end
end
