class Paper < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged
	belongs_to :subject
	belongs_to :semester
	belongs_to :department
	mount_uploader :paper, QpUploader
end
