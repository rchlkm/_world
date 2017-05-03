class Article < ActiveRecord::Base
	belongs_to :category

	validates_presences_of :title

	scope :alphabetical, -> {order(:title)}
	scope :active, -> {where(active: true)}
end
