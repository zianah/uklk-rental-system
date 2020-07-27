class Ability
  include CanCan::Ability

  def initialize(user)  
    user ||= User.new
    if user.admin?
        #can :manage, :all
        can :create, Rental
        can :read, Rental
        can :update, Rental
        can :destroy, Rental

        can :read, Report
        can :destroy, Report

        can :read, Contact
        can :destroy, Contact

        can :read, Booking
        can :destroy, Booking
        can :update, Booking

    else
        can :create, Report
        
        can :read, Rental

        can :create, Booking
        can :read, Booking, user_id: user.id
        can :destroy, Booking, user_id: user.id

        can :create, Contact
    end
  end
end