class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, dependent: :destroy
  has_many :comments

  validates :first_name, :last_name, presence: { message: "Shoudn't be blank :(" },
                                     format: { with: /\A[A-Z].*\z/, message: 'Please, start from upper case' }
  validates :email, uniqueness: true
  validates :phone, uniqueness: true, length: { is: 9 }

  def full_name
    "#{first_name} #{last_name}"
  end

  # return all comments of current user
  def user_comments; end

  # using gravatar
  include Gravtastic
  gravtastic
end
