class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    if user != nil
      user.admin
    else
      true
    end
  end 

  def new?
    create?
  end

  def edit?
    update?
  end

  def update?
    user.admin
  end

  def destroy?
    user.admin
  end

end
