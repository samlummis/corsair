class PlannerController < ApplicationController

def listCourses
	@courses = Course.find_courses
end

end
