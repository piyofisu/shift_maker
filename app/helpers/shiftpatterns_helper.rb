module ShiftpatternsHelper
  def calculate_work_duration(start_time, end_time)
    adjusted_end_time = end_time < start_time ? end_time + 1.day : end_time
    total_seconds = (adjusted_end_time - start_time).to_i - 1.hour
    hours = total_seconds / 3600
    minutes = (total_seconds % 3600) / 60
    "#{hours}時間#{minutes}分"
  end
end
