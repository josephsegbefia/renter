class BookingPolicy < ApplicationPolicy
  include Pundit::Authorization
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
     def resolve
       scope.where(user: user)
     end
  end


  def index?
    true
  end
  def new?
    create?
  end

  def create?
    true
  end

  def pay?
    create?
  end
end
