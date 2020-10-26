module ApplicationHelper
  def flash_message
    if flash[:notice]
      content_tag :p, notice, class: 'bg-success m-0 text-white text-center'
    elsif flash[:alert]
      content_tag :p, alert, class: 'bg-danger m-0 text-white text-center'
    end
  end
end
