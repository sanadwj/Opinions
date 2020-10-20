module UsersHelper
  def add_friend(user)
    if current_user.id == user.id || current_user.friend?(user)

      link_to '', user_followers_path(user),
              class: 'fa fa-plus-square-o', method: :post, value: '1'
    end
  end
end
