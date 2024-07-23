class StaffsController < ApplicationController
  before_action :set_staffs, only: [:edit, :update]

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
    if @staff.update(staff_params)
      redirect_to new_staff_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def set_staffs
    @staff = Staff.find(params[:id])
  end

  def staff_params
    params.require(:staff).permit(:name, :sex_id)
  end

end