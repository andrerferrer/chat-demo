class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  has_many :chatrooms, through: :messages

  validates :nickname, presence: true

  after_create :create_avatar

  private

  def create_avatar
    self.avatar_url = "http://loremflickr.com/280/280/#{nickname}"
  end
end
