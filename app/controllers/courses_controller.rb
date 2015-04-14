class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_params)
		if @course.save
			redirect_to admin_course_path
		else
			render admin_addcourse_path
		end
	end

	def show
		@course = Course.find(params[:id])
	end

	def edit
		@course = Course.find(params[:id])	
	end

	def update
		@course = Course.find(params[:id])

		if @course.update(course_params)
			redirect_to admin_course_path
		else
			render courses_path
		end
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		 redirect_to admin_course_path
	end
	
	private
		def course_params
		params.require(:course).permit(:title)
		end
end
