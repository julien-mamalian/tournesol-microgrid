class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      false
    end



  def create?
    true if current_user.find(user_id).expertise != nil
  end


  def update?
    record.user == user
  end


  def destroy?
    record.user == user
  end

  end
end
