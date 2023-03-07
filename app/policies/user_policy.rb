class UserPolicy < ApplicationPolicy

  def show?
    true
  end

  def update?
    record.username == user.username
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
