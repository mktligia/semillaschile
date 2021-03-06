class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    true
  end

  def edit?
    update?
  end

  def update?
    true
  end

  def destroy?
    user.admin
  end

  def check?
    true
  end
end
