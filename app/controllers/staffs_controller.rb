class StaffsController < ApplicationController
  before_action :set_staffs, only: [:edit, :update]

  def new
    @staffs = Staff.all
    @staff = Staff.new
  end

  def create
    @staff = Staff.new
    @staffs = Staff.all
    # スタッフの配列を取得し、各スタッフを保存する
    staffs_params.each do |staff_attributes|
      staff = Staff.new(staff_attributes)
      unless staff.save
        flash[:alert] = 'スタッフの保存に失敗しました。'
        render :new, status: :unprocessable_entity and return
      end
    end
    redirect_to new_staff_path, notice: 'スタッフが正常に作成されました。'
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

  def staffs_params
    params.require(:staffs).permit!.to_h.values
  end

  def staff_params
    params.require(:staff).permit(:name, :sex_id)
  end
end