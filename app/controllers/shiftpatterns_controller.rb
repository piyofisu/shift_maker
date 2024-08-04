class ShiftpatternsController < ApplicationController
  def new
    @shiftpatterns = Shiftpattern.all
    @shiftpattern = Shiftpattern.new
  end

end
