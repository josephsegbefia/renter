class UnitPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.all
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

  def show?
    create?
  end

end
