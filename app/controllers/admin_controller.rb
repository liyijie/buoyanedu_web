class AdminController < ApplicationController
	def course
		@courses = Course.all
	end

	def video
		@courses = Course.all
	end

	def test	
	end

	def addcourse
		@course = Course.new
	end

	def addvideo
	end

end
	