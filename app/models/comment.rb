class Comment < ApplicationRecord
  validates :commenter, presence: { message: 'Should be more than 6 symbols' }, length: { minimum: 6 }
  validates :body, presence: { message: 'Should be more than 5 symbols' }, length: { minimum: 5 }

  belongs_to :post
  belongs_to :user
end
