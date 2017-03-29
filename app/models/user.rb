class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  validates :first_name, :last_name, presence: { message: "Shoudn't be blank :(" }
  validates :email, uniqueness: true
  validates :phone, uniqueness: true, length: { is: 9 }

end
