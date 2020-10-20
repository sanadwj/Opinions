class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :opinions
  has_many :follows
  has_many :inverse_follows, class_name: 'Follow', foreign_key: 'follower_id'
  has_one_attached :avatar



  def friends
    follower_array = follows.map(&:follower)
    follower_array.concat(inverse_follows.map(&:user))
    follower_array.compact
  end
end
