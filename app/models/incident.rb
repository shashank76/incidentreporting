class Incident < ApplicationRecord

	has_many :images, as: :imageable, dependent: :destroy
	has_many :involve_incident_types, dependent: :destroy
	has_many :incident_types, through: :involve_incident_types
	has_one :incident_detail, dependent: :destroy
	has_many :involve_persons, dependent: :destroy
	has_many :observers, dependent: :destroy

	accepts_nested_attributes_for :images , :allow_destroy => true, :reject_if =>:all_blank
	accepts_nested_attributes_for :involve_persons , :allow_destroy => true, :reject_if =>:all_blank
	accepts_nested_attributes_for :observers , :allow_destroy => true, :reject_if =>:all_blank
	accepts_nested_attributes_for :incident_detail , :allow_destroy => true, :reject_if =>:all_blank
	accepts_nested_attributes_for :involve_incident_types , :allow_destroy => true, :reject_if =>:all_blank

  validates :details, presence: true
end
