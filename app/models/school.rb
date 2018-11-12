class School < ApplicationRecord
	has_many :incidents, dependent: :destroy
	 validates :name, presence: true, uniqueness: true
end
