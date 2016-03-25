class Ability
  include CanCan::Ability

  def initialize(user)
    
    if user.try(:admin?)
      can :manage, :all
    else
      can :create, CompanyComment
      can :create, Favorite

      can :destroy, CompanyComment do |comment|
        comment.user == user
      end

      can :destroy, Favorite do |favorite|
        favorite.user == user
      end
    end
  end
end
