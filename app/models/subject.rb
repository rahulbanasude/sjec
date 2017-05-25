class Subject < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged
	belongs_to :semester
	belongs_to :department
	has_many :papers, dependent: :destroy
end
