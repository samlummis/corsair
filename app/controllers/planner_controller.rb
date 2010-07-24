class PlannerController < ApplicationController



def index
  @course_list = session[:course_list] || []
  if params[:course_id]
    @course_list.push(Course.find(params[:course_id])) 
    session[:course_list] = @course_list
  end    
	@courses = Course.find_courses
end

end
