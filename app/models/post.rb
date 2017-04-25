class Post < ApplicationRecord
  validates :title, :content, presence: true

  belongs_to :user
  has_many :comments

  paginates_per 3
end
