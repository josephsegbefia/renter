class UnitPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.joins(:shop).where(shops: { user: user })
    end
  end

  def new?
    create?
  end

  def create?
    true
  end

  def index?
    true
  end

end
