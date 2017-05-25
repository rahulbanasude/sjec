class Department < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged
	has_many :semesters, dependent: :destroy
  	has_many :subjects, through: :semesters, dependent: :destroy
  	has_many :papers, through: :subjects, dependent: :destroy
end
