class Comment < ApplicationRecord
  validates :body, :commenter, presence: { message: "Shoudn't!@@@@@@@" }

  belongs_to :post
end
