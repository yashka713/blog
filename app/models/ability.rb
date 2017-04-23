class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)

    if user.admin?
      can :manage, :all
    else
      all_user user
    end
  end

  private

  def all_user(user)
    can %i[update destroy], Post do |post|
      post.user == user
    end
    can :create, Post unless user.email.nil?
    can %i[update destroy], Comment do |comment|
      comment.commenter == user
    end
    can :read, :all
  end
end
