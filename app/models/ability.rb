class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    can :update, Post do |post|
      post.user == user
    end
    can :destroy, Post do |post|
      post.user == user
    end
    can :update, Comment do |comment|
      comment.commenter == user
    end
    can :destroy, Comment do |comment|
      comment.commenter == user
    end

    can :read, :all
    # user.avatar = params[:file]

# like this
#     File.open('somewhere') do |f|
#       user.avatar = f
#     end

    # user.save!
    # user.avatar.url # => '/url/to/file.png'
    # user.avatar.current_path # => 'path/to/file.png'
    # user.avatar_identifier # => 'file.png'
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
