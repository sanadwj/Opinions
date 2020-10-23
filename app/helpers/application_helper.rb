module ApplicationHelper
  def render_if(condition, record)
    if condition
      render record
    end
  end

  def redirection
    if @opinion.save
      redirect_to opinions_path
    else
      redirect_to user_path
    end
  end
end
