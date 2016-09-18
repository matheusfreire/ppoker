class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  def is_scrum_master?
    @user.profile.to_i == Dominio::Profile::SCRUM_MASTER
  end

  def is_developer?
    @user.profile.to_i == Dominio::Profile::DEVELOPER
  end

  def is_product_owner?
    @user.profile.to_i == Dominio::Profile::PRODUCT_OWNER
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
