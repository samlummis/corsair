class PlannerController < ApplicationController

def index
	@courses = Course.find_courses
end

end
