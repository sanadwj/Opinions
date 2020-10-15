class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :opinions
  has_many :followings
  has_many :inverse_following, class_name: 'Following', foreign_key: 'follower_id'


  def friends
    follower_array = followings.map(&:follower)
    follower_array.concat(inverse_following.map(&:user))
    follower_array.compact
  end
end
