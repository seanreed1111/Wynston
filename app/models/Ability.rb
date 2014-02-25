class Ability
  include CanCan::Ability

  def intialize (user)
    
    can :read, :all if user.type = "Student"
    can :manage, :all if user.type = "Sysadmin"
    can :read, :all if user.type = "Professor"
  end

end