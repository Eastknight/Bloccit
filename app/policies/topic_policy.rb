class TopicPolicy < ApplicationPolicy

  def create?
    user.present? && user.admin?
  end

  def update?
    create?
  end

  def show?
    record.public? || user.present?
  end
end