class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      can :read, Booking
      can :create, Booking
      # can :update, Booking do |session|
      #   session.try(:user) == user
      # end
      can :destroy, Booking do |sess|
        sess.try(:user) == user
      end

    end
  end
end
