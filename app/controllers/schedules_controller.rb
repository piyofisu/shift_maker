class SchedulesController < ApplicationController
  before_action :set_calendar, only: [:index, :new]

  def index
    @staffs = Staff.all
  end

  def new
    @staffs = Staff.all
  end

  def create
    if schedule_params.all? { |param| update_or_create_schedule(param) }
      redirect_to new_schedule_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end
  
  private

  def set_calendar
    @dates = (Date.today.beginning_of_month..Date.today.end_of_month).to_a
    @days = ["日", "月", "火", "水", "木", "金", "土"]
  end

  def schedule_params
    params.require(:schedules).values.map do |param|
      param.slice(:id, :shiftpattern_id, :making_date, :staff_id)
    end
  end

  def update_or_create_schedule(param)
    if param[:id].present? # IDが存在する = 更新対象
      schedule = Schedule.find(param[:id])
      schedule.update(param.except(:id, :staff_id))
    else # IDが存在しない = 新規作成
      staff = Staff.find(param[:staff_id])
      staff.schedules.create!(param.except(:id, :staff_id))
    end
  end
end
