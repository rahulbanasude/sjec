class Paper < ApplicationRecord
	belongs_to :subject
	belongs_to :semester
	belongs_to :department
	mount_uploader :paper, QpUploader
end
