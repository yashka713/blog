module UsersHelper
  def user_comments(user)
    Comment.all.where('commenter = ?', user.email).count
  end
end
