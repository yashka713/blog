class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    else
      can :update, Post do |post|
        post.user == user
      end

      can :create, Post unless user.email.nil?

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
      # See the wiki for details:
      # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
    end
  end
end
