class PokerPolicy < ApplicationPolicy

  def new?
    @user
  end

  def edit?
    @record.user_id = @user.id
  end

  def update?
    edit?
  end

  def destroy?
    edit? || is_scrum_master?
  end

  def show?
    edit?
  end

  def showall?
    is_scrum_master?
  end

end