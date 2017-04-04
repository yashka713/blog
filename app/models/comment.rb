class Comment < ApplicationRecord
  validates :body, :commenter, presence: { message: "Shoudn't!@@@@@@@" }

  belongs_to :post
  belongs_to :user
end
