class CoursesController < ApplicationController

def index
    @courses = Course.paginate(page: params[:page])
  end
  private
    def course_params
      params.require(:course).permit(:name)
    end
end