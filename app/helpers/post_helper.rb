module PostHelper
  def format_timestamp(ts,format='%Y-%m-%d %H:%M')
    Time.at(ts).strftime(format)
  end
end