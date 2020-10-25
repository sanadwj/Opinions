module UsersHelper
  def add_friend(user)
    if current_user.id == user.id || current_user.friends

      link_to 'Follow', user_followers_path(@user), method: :post, value: '1'
    end
  end

  def avatar
    if @user.avatar.attached?
      image_tag @user.avatar.variant(resize: '90x90!')
    else
      image_tag('profile.png', class: 'rounded-circle', height: 90, width: 90)
    end
  end

  def user_cover
    if @user.cover_image.attached?
      image_tag @user.cover_image, class: 'col-12 p-0', style:"height: 15em"
    else
      image_tag(("cover.jpg"), class: "col-12 p-0", style:'height: 15em')
    end
  end
  
  def current_avatar
    if current_user.avatar.attached?
      image_tag current_user.avatar.variant(resize: "90x90!"), class: 'rounded-circle'
    else
      image_tag("profile.png", class: 'rounded-circle', height: 90, width: 90)
    end
  end

  def resources_avatar
    if resource.avatar.attached?
      image_tag resource.avatar.variant(resize: '90x90!'), class: 'rounded-circle'
    else
      image_tag('profile.png', class: 'rounded-circle', height: 90, width: 90)
    end
  end

  def resources_cover
    if resource.cover_image.attached?
      image_tag resource.cover_image.variant(resize: '90x90!'), class: 'rounded-circle'
    else
      image_tag('profile.png',  height: 90, width: 90)
    end
  end

end
