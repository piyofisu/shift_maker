class ShiftpatternsController < ApplicationController
  def new
    @shiftpatterns = Shiftpattern.all
    @shiftpattern = Shiftpattern.new
  end

  def create
    Shiftpattern.create(shiftpattern_params)
    redirect_to new_shiftpattern_path
  end

  def edit
  end
  

  private

  def shiftpattern_params
    params.require(:shiftpattern).permit(:name, :start_time, :end_time)
  end
end
