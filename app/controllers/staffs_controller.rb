class StaffsController < ApplicationController
  
  def new
    @staffs = Staff.all
    @staff = Staff.new
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to new_staff_path
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
