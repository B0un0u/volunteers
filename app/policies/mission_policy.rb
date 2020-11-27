class MissionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def destroy?
    record.user == user || user.admin if user
  end

  def update?
    record.user == user || user.admin if user
  end
end
