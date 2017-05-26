class Semester < ApplicationRecord

	belongs_to :department
	has_many :subjects, dependent: :destroy
	has_many :papers, through: :subjects, dependent: :destroy
end
