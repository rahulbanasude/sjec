class Department < ApplicationRecord
	has_many :semesters, dependent: :destroy
  	has_many :subjects, through: :semesters, dependent: :destroy
  	has_many :papers, through: :subjects, dependent: :destroy
end
