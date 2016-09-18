class UserStoryPolicy < ApplicationPolicy

  def edit?
    is_scrum_master?
  end

  def new?
    is_scrum_master?
  end

  def update?
    edit?
  end

  def destroy?
    edit? && @record.user_id == @user.id
  end

end