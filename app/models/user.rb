class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :opinions
  has_many :followers
  has_many :inverse_followers, class_name: 'Follower', foreign_key: 'follower_id'
  has_one_attached :avatar
  has_one_attached :cover_image
  has_many :confirmed_followers, -> { where confirmed: true }, class_name: 'Follower'
  has_many :friends, through: :confirmed_followers
  has_rich_text :body



  def friends
    follower_array = followers.map(&:follower)
    follower_array.concat(inverse_followers.map(&:user))
    follower_array.compact
  end

  def friend_requests
    inverse_followers.map { |follower| follower.user.confirmed }.compact
  end

  def confirmed_friend(user)
    follower = inverse_followerss.find { |inv_follower| inv_follower.user == user }
    follower.confirmed = true
    follower.save
  end

end
