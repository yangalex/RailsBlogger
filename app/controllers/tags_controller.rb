class TagsController < ApplicationController
	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
		@tag = Tag.find(params[:id])
		tag_name = @tag.name
		@tag.destroy

		flash.notice = "Deleted tag: #{tag_name}"

		redirect_to tags_path
	end

end
