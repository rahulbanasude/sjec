class Subject < ApplicationRecord

	belongs_to :semester
	belongs_to :department
	has_many :papers, dependent: :destroy
end
