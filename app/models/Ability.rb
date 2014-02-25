class Ability
  include CanCan::Ability

  def intialize (user)
    can :read, :all
  end

end