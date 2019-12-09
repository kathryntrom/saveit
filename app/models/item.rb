class Item < ApplicationRecord
	belongs_to :user
	has_many :footprints
	has_many :impacts, :through => :footprints
end
