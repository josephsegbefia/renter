class DashboardPolicy < ApplicationPolicy
  attr_reader :user

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  # `_record` in this example will be :dashboard
  def initialize(user, _record)
    @user = user
  end

  def index?
    true
  end
end
