class SchedulesController < ApplicationController
  before_action :set_calendar, only: [:index]

  def index
    @staffs = Staff.all
  end

  def new
  end

  def create
  end

  def edit
  end
  
  private

  def set_calendar
    @dates = (Date.today.beginning_of_month..Date.today.end_of_month).to_a
    @days = ["日", "月", "火", "水", "木", "金", "土"]
  end
end
