# frozen_string_literal: true

module TheUser
  private

  def set_user
    @user = User.find(current_user.id)
  end
end
