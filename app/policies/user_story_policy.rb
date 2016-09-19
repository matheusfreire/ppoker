class UserStoryPolicy < ApplicationPolicy

  def edit?
    is_product_owner?
  end

  def new?
    is_product_owner?
  end

  def update?
    edit?
  end

  def destroy?
    is_product_owner? && @record.user_id == @user.id
  end

end