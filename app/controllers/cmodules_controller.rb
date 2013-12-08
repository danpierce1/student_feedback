class CmodulesController < ApplicationController

def index
    @cmodules = Cmodule.paginate(page: params[:page])
  end
  private
    def course_params
      params.require(:cmodule).permit(:name)
    end
end