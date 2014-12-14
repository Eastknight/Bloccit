class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  # scope :visible_to, -> {where(public: true)}
  scope :visible_to, -> (user) { user ? all : publicly_viewable}
  # scope :visible_to, -> (user) { publicly_viewable.where() }

  scope :publicly_viewable, -> {where(public: true)}
  scope :privately_viewable, -> {where(public: false)}
end
