# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    if user.present?
      can :manage, Elevator, admin_user_id: user.id
      #can :manage, Quote, admin
      
      cannot :create, Lead
      cannot :update, Lead
      cannot :create, Quote
      cannot :update, Quote

      if user.admin?
        can :manage, :all
        #cannot :destroy, Employee
        #cannot :update, AdminUser
        can :update, AdminUser, id: user.id
      end
    end


    # QUOTE ------ USER ------ CUSTOMER
    # QUOTE: belongs to USER
    # USER: has many QUOTES
    # if admin_user_id in QUOTES === admin_user_id in CUSTOMER >>>> show QUOTE in CUSTOMER's view


   
   
   
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
