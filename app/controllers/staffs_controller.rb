class StaffsController < ApplicationController
  
  def index
  end
  
  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def staff_params
    params.require(:staff).permit(:name, :working_status_id, :incharge)
  end

end
