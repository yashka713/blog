module CommentsHelper
  def normalize_date(my_date)
    my_date.to_datetime.strftime('Created %d %B %Y at %T')
  end

  def user_avatar(commenter)
    #HACK change it!
    user = find_user(commenter)
    if user.nil?
      'default.png'
    else
      user.avatar
    end
  end

  def find_user(commenter)
    User.all.where('email = ?', commenter).first
  end

  # def show_page(commenter)
  #
  # end
end
