class SchedulesController < ApplicationController
  before_action :set_calendar, only: [:index, :new]

  def index
    @staffs = Staff.all
  end

  def new
    @staffs = Staff.all
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @staff = Staff.find(params[:schedule][:staff_id])
    @schedule.staffs << @staff
    if @schedule.save
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
    params.require(:schedule).require(:schedules).values.map do |param|
      param.slice(:id, :shiftpattern_id, :making_date)
    end
  end
end
