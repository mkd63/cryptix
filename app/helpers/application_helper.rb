module ApplicationHelper
  def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-danger"
        when :alert then "alert alert-error"
    end
  end
  def alert_for(flash_type)
    {
        success: 'alert-success',
        error: 'alert-danger',
        alert: 'alert-warning',
        notice: 'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end
end
