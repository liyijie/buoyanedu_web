class VideosController < ApplicationController
	def new
		@course  = Course.find(params[:course_id])
		@video = @course.videos.new
	end

	def create
		@course  = Course.find(params[:course_id])
		if @video = @course.videos.create(video_params)
			redirect_to course_path(@course)
		else
			render course_path(@course)
		end
	end

	def show
		@course = Course.find(params[:course_id])
		@video = @course.videos.find(params[:id])
	end

	def destroy
		@course = Course.find(params[:course_id])
		@video = @course.videos.find(params[:id])
		@video.destroy
		redirect_to course_path(@course)
	end

	def edit
		@course = Course.find(params[:course_id])
		@video = @course.videos.find(params[:id])
	end

	def update
		@course = Course.find(params[:course_id])
		@video = @course.videos.find(params[:id])
		if @video.update(video_params)
			redirect_to course_path(@course)
		else
			redirect_to course_path(@course)
		end
	end

	private
		def video_params
			params.require(:video).permit(:title, :introduce, :teacher, :poster, :video)
		end
end
