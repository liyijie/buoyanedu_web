class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def new
		
	end

	def create
		@course = Course.new(course_params)
		if @course.save
			redirect_to @course
		else
			render 'new'
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
			redirect_to @course
		else
			render 'edit'
		end
	end
	
	private
		def course_params
		params.require(:course).permit(:title)
		end
end
