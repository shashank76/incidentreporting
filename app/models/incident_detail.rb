class IncidentDetail < ApplicationRecord
  belongs_to :incident

  validates :location,:date, presence: true
end
