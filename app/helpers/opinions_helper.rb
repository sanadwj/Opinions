module OpinionsHelper
  def opinion_user_edit(opinion)
    return unless opinion.user_id == @user.id

    content_tag(:button, class: 'btn-sm btn-secondary ') do
      link_to 'Edit', edit_opinion_path(opinion.id), class: 'text-white'
    end
  end

  def opinion_user_delete(opinion)
    return unless opinion.user_id == @user.id

    content_tag(:button, class: 'btn-sm btn-outline-danger ') do
      link_to 'Destroy', opinion, method: :delete, data: { confirm: 'Are you sure?' }, class: 'text-dark'
    end
  end
end
